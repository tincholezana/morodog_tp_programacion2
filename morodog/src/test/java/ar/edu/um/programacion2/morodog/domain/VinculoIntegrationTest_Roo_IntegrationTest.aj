// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.edu.um.programacion2.morodog.domain;

import ar.edu.um.programacion2.morodog.domain.VinculoDataOnDemand;
import ar.edu.um.programacion2.morodog.domain.VinculoIntegrationTest;
import ar.edu.um.programacion2.morodog.service.VinculoService;
import java.util.Iterator;
import java.util.List;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect VinculoIntegrationTest_Roo_IntegrationTest {
    
    declare @type: VinculoIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: VinculoIntegrationTest: @ContextConfiguration(locations = "classpath*:/META-INF/spring/applicationContext*.xml");
    
    declare @type: VinculoIntegrationTest: @Transactional;
    
    @Autowired
    VinculoDataOnDemand VinculoIntegrationTest.dod;
    
    @Autowired
    VinculoService VinculoIntegrationTest.vinculoService;
    
    @Test
    public void VinculoIntegrationTest.testCountAllVinculoes() {
        Assert.assertNotNull("Data on demand for 'Vinculo' failed to initialize correctly", dod.getRandomVinculo());
        long count = vinculoService.countAllVinculoes();
        Assert.assertTrue("Counter for 'Vinculo' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void VinculoIntegrationTest.testFindVinculo() {
        Vinculo obj = dod.getRandomVinculo();
        Assert.assertNotNull("Data on demand for 'Vinculo' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Vinculo' failed to provide an identifier", id);
        obj = vinculoService.findVinculo(id);
        Assert.assertNotNull("Find method for 'Vinculo' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'Vinculo' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void VinculoIntegrationTest.testFindAllVinculoes() {
        Assert.assertNotNull("Data on demand for 'Vinculo' failed to initialize correctly", dod.getRandomVinculo());
        long count = vinculoService.countAllVinculoes();
        Assert.assertTrue("Too expensive to perform a find all test for 'Vinculo', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<Vinculo> result = vinculoService.findAllVinculoes();
        Assert.assertNotNull("Find all method for 'Vinculo' illegally returned null", result);
        Assert.assertTrue("Find all method for 'Vinculo' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void VinculoIntegrationTest.testFindVinculoEntries() {
        Assert.assertNotNull("Data on demand for 'Vinculo' failed to initialize correctly", dod.getRandomVinculo());
        long count = vinculoService.countAllVinculoes();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<Vinculo> result = vinculoService.findVinculoEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'Vinculo' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'Vinculo' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void VinculoIntegrationTest.testFlush() {
        Vinculo obj = dod.getRandomVinculo();
        Assert.assertNotNull("Data on demand for 'Vinculo' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Vinculo' failed to provide an identifier", id);
        obj = vinculoService.findVinculo(id);
        Assert.assertNotNull("Find method for 'Vinculo' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyVinculo(obj);
        Integer currentVersion = obj.getVersion();
        obj.flush();
        Assert.assertTrue("Version for 'Vinculo' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void VinculoIntegrationTest.testUpdateVinculoUpdate() {
        Vinculo obj = dod.getRandomVinculo();
        Assert.assertNotNull("Data on demand for 'Vinculo' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Vinculo' failed to provide an identifier", id);
        obj = vinculoService.findVinculo(id);
        boolean modified =  dod.modifyVinculo(obj);
        Integer currentVersion = obj.getVersion();
        Vinculo merged = vinculoService.updateVinculo(obj);
        obj.flush();
        Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        Assert.assertTrue("Version for 'Vinculo' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void VinculoIntegrationTest.testSaveVinculo() {
        Assert.assertNotNull("Data on demand for 'Vinculo' failed to initialize correctly", dod.getRandomVinculo());
        Vinculo obj = dod.getNewTransientVinculo(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'Vinculo' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'Vinculo' identifier to be null", obj.getId());
        try {
            vinculoService.saveVinculo(obj);
        } catch (final ConstraintViolationException e) {
            final StringBuilder msg = new StringBuilder();
            for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                final ConstraintViolation<?> cv = iter.next();
                msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
            }
            throw new IllegalStateException(msg.toString(), e);
        }
        obj.flush();
        Assert.assertNotNull("Expected 'Vinculo' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void VinculoIntegrationTest.testDeleteVinculo() {
        Vinculo obj = dod.getRandomVinculo();
        Assert.assertNotNull("Data on demand for 'Vinculo' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'Vinculo' failed to provide an identifier", id);
        obj = vinculoService.findVinculo(id);
        vinculoService.deleteVinculo(obj);
        obj.flush();
        Assert.assertNull("Failed to remove 'Vinculo' with identifier '" + id + "'", vinculoService.findVinculo(id));
    }
    
}
