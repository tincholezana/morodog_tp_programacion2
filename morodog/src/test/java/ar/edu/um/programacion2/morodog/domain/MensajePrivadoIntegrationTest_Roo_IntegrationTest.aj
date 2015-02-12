// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.edu.um.programacion2.morodog.domain;

import ar.edu.um.programacion2.morodog.domain.MensajePrivadoDataOnDemand;
import ar.edu.um.programacion2.morodog.domain.MensajePrivadoIntegrationTest;
import ar.edu.um.programacion2.morodog.service.MensajePrivadoService;
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

privileged aspect MensajePrivadoIntegrationTest_Roo_IntegrationTest {
    
    declare @type: MensajePrivadoIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: MensajePrivadoIntegrationTest: @ContextConfiguration(locations = "classpath*:/META-INF/spring/applicationContext*.xml");
    
    declare @type: MensajePrivadoIntegrationTest: @Transactional;
    
    @Autowired
    MensajePrivadoDataOnDemand MensajePrivadoIntegrationTest.dod;
    
    @Autowired
    MensajePrivadoService MensajePrivadoIntegrationTest.mensajePrivadoService;
    
    @Test
    public void MensajePrivadoIntegrationTest.testCountAllMensajePrivadoes() {
        Assert.assertNotNull("Data on demand for 'MensajePrivado' failed to initialize correctly", dod.getRandomMensajePrivado());
        long count = mensajePrivadoService.countAllMensajePrivadoes();
        Assert.assertTrue("Counter for 'MensajePrivado' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void MensajePrivadoIntegrationTest.testFindMensajePrivado() {
        MensajePrivado obj = dod.getRandomMensajePrivado();
        Assert.assertNotNull("Data on demand for 'MensajePrivado' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'MensajePrivado' failed to provide an identifier", id);
        obj = mensajePrivadoService.findMensajePrivado(id);
        Assert.assertNotNull("Find method for 'MensajePrivado' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'MensajePrivado' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void MensajePrivadoIntegrationTest.testFindAllMensajePrivadoes() {
        Assert.assertNotNull("Data on demand for 'MensajePrivado' failed to initialize correctly", dod.getRandomMensajePrivado());
        long count = mensajePrivadoService.countAllMensajePrivadoes();
        Assert.assertTrue("Too expensive to perform a find all test for 'MensajePrivado', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<MensajePrivado> result = mensajePrivadoService.findAllMensajePrivadoes();
        Assert.assertNotNull("Find all method for 'MensajePrivado' illegally returned null", result);
        Assert.assertTrue("Find all method for 'MensajePrivado' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void MensajePrivadoIntegrationTest.testFindMensajePrivadoEntries() {
        Assert.assertNotNull("Data on demand for 'MensajePrivado' failed to initialize correctly", dod.getRandomMensajePrivado());
        long count = mensajePrivadoService.countAllMensajePrivadoes();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<MensajePrivado> result = mensajePrivadoService.findMensajePrivadoEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'MensajePrivado' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'MensajePrivado' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void MensajePrivadoIntegrationTest.testFlush() {
        MensajePrivado obj = dod.getRandomMensajePrivado();
        Assert.assertNotNull("Data on demand for 'MensajePrivado' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'MensajePrivado' failed to provide an identifier", id);
        obj = mensajePrivadoService.findMensajePrivado(id);
        Assert.assertNotNull("Find method for 'MensajePrivado' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyMensajePrivado(obj);
        Integer currentVersion = obj.getVersion();
        obj.flush();
        Assert.assertTrue("Version for 'MensajePrivado' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void MensajePrivadoIntegrationTest.testUpdateMensajePrivadoUpdate() {
        MensajePrivado obj = dod.getRandomMensajePrivado();
        Assert.assertNotNull("Data on demand for 'MensajePrivado' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'MensajePrivado' failed to provide an identifier", id);
        obj = mensajePrivadoService.findMensajePrivado(id);
        boolean modified =  dod.modifyMensajePrivado(obj);
        Integer currentVersion = obj.getVersion();
        MensajePrivado merged = mensajePrivadoService.updateMensajePrivado(obj);
        obj.flush();
        Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        Assert.assertTrue("Version for 'MensajePrivado' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void MensajePrivadoIntegrationTest.testSaveMensajePrivado() {
        Assert.assertNotNull("Data on demand for 'MensajePrivado' failed to initialize correctly", dod.getRandomMensajePrivado());
        MensajePrivado obj = dod.getNewTransientMensajePrivado(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'MensajePrivado' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'MensajePrivado' identifier to be null", obj.getId());
        try {
            mensajePrivadoService.saveMensajePrivado(obj);
        } catch (final ConstraintViolationException e) {
            final StringBuilder msg = new StringBuilder();
            for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                final ConstraintViolation<?> cv = iter.next();
                msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
            }
            throw new IllegalStateException(msg.toString(), e);
        }
        obj.flush();
        Assert.assertNotNull("Expected 'MensajePrivado' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void MensajePrivadoIntegrationTest.testDeleteMensajePrivado() {
        MensajePrivado obj = dod.getRandomMensajePrivado();
        Assert.assertNotNull("Data on demand for 'MensajePrivado' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'MensajePrivado' failed to provide an identifier", id);
        obj = mensajePrivadoService.findMensajePrivado(id);
        mensajePrivadoService.deleteMensajePrivado(obj);
        obj.flush();
        Assert.assertNull("Failed to remove 'MensajePrivado' with identifier '" + id + "'", mensajePrivadoService.findMensajePrivado(id));
    }
    
}
