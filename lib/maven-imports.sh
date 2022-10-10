#!/bin/bash
mvn install:install-file -Dfile=com.ibm.icu_70.1.0.jar -DgroupId=com.ibm -DartifactId=icu -Dversion=70.1.0 -Dpackaging=jar
mvn install:install-file -Dfile=org.tukaani.xz_1.9.0.jar -DgroupId=org.tukaani -DartifactId=xz -Dversion=1.9.0 -Dpackaging=jar
mvn install:install-file -Dfile=javax.annotation-api_1.3.2.jar -DgroupId=javax -DartifactId=annotation-api -Dversion=1.3.2 -Dpackaging=jar
mvn install:install-file -Dfile=org.apache.felix.scr_2.2.2.jar -DgroupId=org.apache.felix -DartifactId=scr -Dversion=2.2.2 -Dpackaging=jar
mvn install:install-file -Dfile=org.sat4j.pb_2.3.6.v20201214.jar -DgroupId=org.sat4j -DartifactId=pb -Dversion=2.3.6.v20201214 -Dpackaging=jar
mvn install:install-file -Dfile=javax.xml_1.3.4.v201005080400.jar -DgroupId=javax -DartifactId=xml -Dversion=1.3.4.v201005080400 -Dpackaging=jar
mvn install:install-file -Dfile=javax.wsdl_1.6.2.v201012040545.jar -DgroupId=javax -DartifactId=wsdl -Dversion=1.6.2.v201012040545 -Dpackaging=jar
mvn install:install-file -Dfile=org.sat4j.core_2.3.6.v20201214.jar -DgroupId=org.sat4j -DartifactId=core -Dversion=2.3.6.v20201214 -Dpackaging=jar
mvn install:install-file -Dfile=wrapped.com.ibm.icu.icu4j_3.8.0.jar -DgroupId=wrapped.com.ibm.icu -DartifactId=icu4j -Dversion=3.8.0 -Dpackaging=jar
mvn install:install-file -Dfile=com.github.librepdf.openpdf_1.3.26.jar -DgroupId=com.github.librepdf -DartifactId=openpdf -Dversion=1.3.26 -Dpackaging=jar
mvn install:install-file -Dfile=org.apache.poi_4.1.1.v20200604-1524.jar -DgroupId=org.apache -DartifactId=poi -Dversion=4.1.1.v20200604-1524 -Dpackaging=jar
mvn install:install-file -Dfile=org.eclipse.jetty.servlet-api_4.0.6.jar -DgroupId=org.eclipse.jetty -DartifactId=servlet-api -Dversion=4.0.6 -Dpackaging=jar
mvn install:install-file -Dfile=org.w3c.css.sac_1.3.1.v200903091627.jar -DgroupId=org.w3c.css -DartifactId=sac -Dversion=1.3.1.v200903091627 -Dpackaging=jar
mvn install:install-file -Dfile=org.w3c.dom.svg_1.1.0.v201011041433.jar -DgroupId=org.w3c.dom -DartifactId=svg -Dversion=1.1.0.v201011041433 -Dpackaging=jar
mvn install:install-file -Dfile=javax.activation_1.1.0.v201211130549.jar -DgroupId=javax -DartifactId=activation -Dversion=1.1.0.v201211130549 -Dpackaging=jar
mvn install:install-file -Dfile=javax.xml.stream_1.0.1.v201004272200.jar -DgroupId=javax.xml -DartifactId=stream -Dversion=1.0.1.v201004272200 -Dpackaging=jar
mvn install:install-file -Dfile=org.w3c.dom.smil_1.0.1.v200903091627.jar -DgroupId=org.w3c.dom -DartifactId=smil -Dversion=1.0.1.v200903091627 -Dpackaging=jar
mvn install:install-file -Dfile=jakarta.xml.bind_2.3.3.v20201118-1818.jar -DgroupId=jakarta.xml -DartifactId=bind -Dversion=2.3.3.v20201118-1818 -Dpackaging=jar
mvn install:install-file -Dfile=org.apache.xalan_2.7.2.v20201124-1837.jar -DgroupId=org.apache -DartifactId=xalan -Dversion=2.7.2.v20201124-1837 -Dpackaging=jar
mvn install:install-file -Dfile=org.apache.xerces_2.12.2.v20220131-0835.jar -DgroupId=org.apache -DartifactId=xerces -Dversion=2.12.2.v20220131-0835 -Dpackaging=jar
mvn install:install-file -Dfile=org.eclipse.help_3.9.100.v20210721-0601.jar -DgroupId=org.eclipse -DartifactId=help -Dversion=3.9.100.v20210721-0601 -Dpackaging=jar
mvn install:install-file -Dfile=org.apache.derby_10.11.1.1_v201605202053.jar -DgroupId=org.apache.derby_10.11.1 -DartifactId=1 -Dversion=v201605202053 -Dpackaging=jar
mvn install:install-file -Dfile=org.apache.xmlbeans_3.1.0.v20200922-1359.jar -DgroupId=org.apache -DartifactId=xmlbeans -Dversion=3.1.0.v20200922-1359 -Dpackaging=jar
mvn install:install-file -Dfile=org.eclipse.birt.runtime_4.10.0-20221001.jar -DgroupId=org.eclipse.birt -DartifactId=runtime -Dversion=4.10.0-20221001 -Dpackaging=jar
mvn install:install-file -Dfile=org.eclipse.osgi_3.18.100.v20220817-1601.jar -DgroupId=org.eclipse -DartifactId=osgi -Dversion=3.18.100.v20220817-1601 -Dpackaging=jar
mvn install:install-file -Dfile=org.osgi.util.promise_1.2.0.202109301733.jar -DgroupId=org.osgi.util -DartifactId=promise -Dversion=1.2.0.202109301733 -Dpackaging=jar
mvn install:install-file -Dfile=org.apache.poi.ooxml_4.1.1.v20200820-1148.jar -DgroupId=org.apache.poi -DartifactId=ooxml -Dversion=4.1.1.v20200820-1148 -Dpackaging=jar
mvn install:install-file -Dfile=org.osgi.service.prefs_1.1.2.202109301733.jar -DgroupId=org.osgi.service -DartifactId=prefs -Dversion=1.1.2.202109301733 -Dpackaging=jar
mvn install:install-file -Dfile=org.osgi.util.function_1.2.0.202109301733.jar -DgroupId=org.osgi.util -DartifactId=function -Dversion=1.2.0.202109301733 -Dpackaging=jar
mvn install:install-file -Dfile=org.apache.batik.css_1.14.0.v20210324-0332.jar -DgroupId=org.apache.batik -DartifactId=css -Dversion=1.14.0.v20210324-0332 -Dpackaging=jar
mvn install:install-file -Dfile=org.apache.batik.dom_1.14.0.v20210324-0332.jar -DgroupId=org.apache.batik -DartifactId=dom -Dversion=1.14.0.v20210324-0332 -Dpackaging=jar
mvn install:install-file -Dfile=org.apache.batik.ext_1.14.0.v20210324-0332.jar -DgroupId=org.apache.batik -DartifactId=ext -Dversion=1.14.0.v20210324-0332 -Dpackaging=jar
mvn install:install-file -Dfile=org.apache.batik.gvt_1.14.0.v20210324-0332.jar -DgroupId=org.apache.batik -DartifactId=gvt -Dversion=1.14.0.v20210324-0332 -Dpackaging=jar
mvn install:install-file -Dfile=org.apache.batik.xml_1.14.0.v20210324-0332.jar -DgroupId=org.apache -DartifactId=batik-xml -Dversion=1.14.0.v20210324-0332 -Dpackaging=jar
mvn install:install-file -Dfile=org.apache.commons.io_2.8.0.v20210415-0900.jar -DgroupId=org.apache.commons -DartifactId=io -Dversion=2.8.0.v20210415-0900 -Dpackaging=jar
mvn install:install-file -Dfile=org.apache.batik.anim_1.14.0.v20210324-0332.jar -DgroupId=org.apache.batik -DartifactId=anim -Dversion=1.14.0.v20210324-0332 -Dpackaging=jar
mvn install:install-file -Dfile=org.apache.batik.i18n_1.14.0.v20210324-0332.jar -DgroupId=org.apache.batik -DartifactId=i18n -Dversion=1.14.0.v20210324-0332 -Dpackaging=jar
mvn install:install-file -Dfile=org.apache.batik.util_1.14.0.v20210324-0332.jar -DgroupId=org.apache.batik -DartifactId=util -Dversion=1.14.0.v20210324-0332 -Dpackaging=jar
mvn install:install-file -Dfile=org.apache.lucene.core_7.5.0.v20181003-1532.jar -DgroupId=org.apache -DartifactId=lucene-core -Dversion=7.5.0.v20181003-1532 -Dpackaging=jar
mvn install:install-file -Dfile=org.apache.lucene.misc_7.5.0.v20181003-1532.jar -DgroupId=org.apache.lucene -DartifactId=misc -Dversion=7.5.0.v20181003-1532 -Dpackaging=jar
mvn install:install-file -Dfile=org.apache.xmlgraphics_2.6.0.v20210409-0748.jar -DgroupId=org.apache -DartifactId=xmlgraphics -Dversion=2.6.0.v20210409-0748 -Dpackaging=jar
mvn install:install-file -Dfile=org.bouncycastle.bcpg_1.71.0.v20220723-1943.jar -DgroupId=org.bouncycastle -DartifactId=bcpg -Dversion=1.71.0.v20220723-1943 -Dpackaging=jar
mvn install:install-file -Dfile=org.eclipse.emf.ecore_2.28.0.v20220817-1401.jar -DgroupId=org.eclipse.emf -DartifactId=ecore -Dversion=2.28.0.v20220817-1401 -Dpackaging=jar
mvn install:install-file -Dfile=org.apache.batik.codec_1.14.0.v20210324-0332.jar -DgroupId=org.apache.batik -DartifactId=codec -Dversion=1.14.0.v20210324-0332 -Dpackaging=jar
mvn install:install-file -Dfile=org.apache.xml.resolver_1.2.0.v20220715-1206.jar -DgroupId=org.apache.xml -DartifactId=resolver -Dversion=1.2.0.v20220715-1206 -Dpackaging=jar
mvn install:install-file -Dfile=org.eclipse.emf.common_2.26.0.v20220908-0712.jar -DgroupId=org.eclipse.emf -DartifactId=common -Dversion=2.26.0.v20220908-0712 -Dpackaging=jar
mvn install:install-file -Dfile=org.mozilla.javascript_1.7.10.v20190430-1943.jar -DgroupId=org.mozilla -DartifactId=javascript -Dversion=1.7.10.v20190430-1943 -Dpackaging=jar
mvn install:install-file -Dfile=org.apache.batik.bridge_1.14.0.v20210324-0332.jar -DgroupId=org.apache.batik -DartifactId=bridge -Dversion=1.14.0.v20210324-0332 -Dpackaging=jar
mvn install:install-file -Dfile=org.apache.batik.parser_1.14.0.v20210324-0332.jar -DgroupId=org.apache.batik -DartifactId=parser -Dversion=1.14.0.v20210324-0332 -Dpackaging=jar
mvn install:install-file -Dfile=org.apache.batik.script_1.14.0.v20210324-0332.jar -DgroupId=org.apache.batik -DartifactId=script -Dversion=1.14.0.v20210324-0332 -Dpackaging=jar
mvn install:install-file -Dfile=org.apache.batik.svggen_1.14.0.v20210324-0332.jar -DgroupId=org.apache.batik -DartifactId=svggen -Dversion=1.14.0.v20210324-0332 -Dpackaging=jar
mvn install:install-file -Dfile=org.apache.commons.math3_3.6.1.v20200817-1830.jar -DgroupId=org.apache.commons -DartifactId=math3 -Dversion=3.6.1.v20200817-1830 -Dpackaging=jar
mvn install:install-file -Dfile=org.apache.xml.serializer_2.7.1.v201005080400.jar -DgroupId=org.apache.xml -DartifactId=serializer -Dversion=2.7.1.v201005080400 -Dpackaging=jar
mvn install:install-file -Dfile=org.bouncycastle.bcprov_1.71.0.v20220723-1943.jar -DgroupId=org.bouncycastle -DartifactId=bcprov -Dversion=1.71.0.v20220723-1943 -Dpackaging=jar
mvn install:install-file -Dfile=org.eclipse.core.jobs_3.13.100.v20220817-1539.jar -DgroupId=org.eclipse.core -DartifactId=jobs -Dversion=3.13.100.v20220817-1539 -Dpackaging=jar
mvn install:install-file -Dfile=org.osgi.service.component_1.5.0.202109301733.jar -DgroupId=org.osgi.service -DartifactId=component -Dversion=1.5.0.202109301733 -Dpackaging=jar
mvn install:install-file -Dfile=org.apache.batik.dom.svg_1.14.0.v20210324-0332.jar -DgroupId=org.apache.batik -DartifactId=dom-svg -Dversion=1.14.0.v20210324-0332 -Dpackaging=jar
mvn install:install-file -Dfile=org.apache.commons.codec_1.14.0.v20200818-1422.jar -DgroupId=org.apache -DartifactId=commons-codec -Dversion=1.14.0.v20200818-1422 -Dpackaging=jar
mvn install:install-file -Dfile=org.eclipse.core.runtime_3.26.0.v20220813-0916.jar -DgroupId=org.eclipse -DartifactId=core-runtime -Dversion=3.26.0.v20220813-0916 -Dpackaging=jar
mvn install:install-file -Dfile=org.eclipse.equinox.app_1.6.200.v20220720-2012.jar -DgroupId=org.eclipse.equinox -DartifactId=app -Dversion=1.6.200.v20220720-2012 -Dpackaging=jar
mvn install:install-file -Dfile=org.eclipse.orbit.mongodb_3.2.2.v20181004-1955.jar -DgroupId=org.eclipse.orbit -DartifactId=mongodb -Dversion=3.2.2.v20181004-1955 -Dpackaging=jar
mvn install:install-file -Dfile=org.apache.batik.awt.util_1.14.0.v20210324-0332.jar -DgroupId=org.apache.batik -DartifactId=awt-util -Dversion=1.14.0.v20210324-0332 -Dpackaging=jar
mvn install:install-file -Dfile=org.apache.commons.logging_1.2.0.v20180409-1502.jar -DgroupId=org.apache.commons -DartifactId=logging -Dversion=1.2.0.v20180409-1502 -Dpackaging=jar
mvn install:install-file -Dfile=org.eclipse.emf.ecore.xmi_2.17.0.v20220817-1334.jar -DgroupId=org.eclipse.emf.ecore -DartifactId=xmi -Dversion=2.17.0.v20220817-1334 -Dpackaging=jar
mvn install:install-file -Dfile=org.apache.batik.constants_1.14.0.v20210324-0332.jar -DgroupId=org.apache.batik -DartifactId=constants -Dversion=1.14.0.v20210324-0332 -Dpackaging=jar
mvn install:install-file -Dfile=org.eclipse.core.resources_3.18.0.v20220828-0546.jar -DgroupId=org.eclipse.core -DartifactId=resources -Dversion=3.18.0.v20220828-0546 -Dpackaging=jar
mvn install:install-file -Dfile=org.eclipse.equinox.event_1.6.100.v20211021-1418.jar -DgroupId=org.eclipse.equinox -DartifactId=event -Dversion=1.6.100.v20211021-1418 -Dpackaging=jar
mvn install:install-file -Dfile=org.apache.batik.transcoder_1.14.0.v20210324-0332.jar -DgroupId=org.apache.batik -DartifactId=transcoder -Dversion=1.14.0.v20210324-0332 -Dpackaging=jar
mvn install:install-file -Dfile=org.apache.commons.compress_1.21.0.v20211103-2100.jar -DgroupId=org.apache.commons -DartifactId=compress -Dversion=1.21.0.v20211103-2100 -Dpackaging=jar
mvn install:install-file -Dfile=org.apache.poi.ooxml.schemas_4.1.1.v20200922-2105.jar -DgroupId=org.apache.poi.ooxml -DartifactId=schemas -Dversion=4.1.1.v20200922-2105 -Dpackaging=jar
mvn install:install-file -Dfile=org.eclipse.osgi.services_3.10.200.v20210723-0643.jar -DgroupId=org.eclipse.osgi -DartifactId=services -Dversion=3.10.200.v20210723-0643 -Dpackaging=jar
mvn install:install-file -Dfile=org.apache.lucene.queryparser_7.5.0.v20181003-1532.jar -DgroupId=org.apache.lucene -DartifactId=queryparser -Dversion=7.5.0.v20181003-1532 -Dpackaging=jar
mvn install:install-file -Dfile=org.eclipse.core.filesystem_1.9.500.v20220817-1539.jar -DgroupId=org.eclipse.core -DartifactId=filesystem -Dversion=1.9.500.v20220817-1539 -Dpackaging=jar
mvn install:install-file -Dfile=org.eclipse.emf.ecore.change_2.14.0.v20190528-0725.jar -DgroupId=org.eclipse.emf.ecore -DartifactId=change -Dversion=2.14.0.v20190528-0725 -Dpackaging=jar
mvn install:install-file -Dfile=org.eclipse.equinox.common_3.16.200.v20220817-1601.jar -DgroupId=org.eclipse -DartifactId=equinox-common -Dversion=3.16.200.v20220817-1601 -Dpackaging=jar
mvn install:install-file -Dfile=org.eclipse.core.contenttype_3.8.200.v20220817-1539.jar -DgroupId=org.eclipse.core -DartifactId=contenttype -Dversion=3.8.200.v20220817-1539 -Dpackaging=jar
mvn install:install-file -Dfile=org.eclipse.core.expressions_3.8.200.v20220613-1047.jar -DgroupId=org.eclipse.core -DartifactId=expressions -Dversion=3.8.200.v20220613-1047 -Dpackaging=jar
mvn install:install-file -Dfile=org.apache.commons.collections4_4.4.0.v20200420-1700.jar -DgroupId=org.apache.commons -DartifactId=collections4 -Dversion=4.4.0.v20200420-1700 -Dpackaging=jar
mvn install:install-file -Dfile=org.eclipse.equinox.registry_3.11.200.v20220817-1601.jar -DgroupId=org.eclipse.equinox -DartifactId=registry -Dversion=3.11.200.v20220817-1601 -Dpackaging=jar
mvn install:install-file -Dfile=org.eclipse.equinox.security_1.3.1000.v20220801-1135.jar -DgroupId=org.eclipse.equinox -DartifactId=security -Dversion=1.3.1000.v20220801-1135 -Dpackaging=jar
mvn install:install-file -Dfile=org.w3c.dom.events_3.0.0.draft20060413_v201105210656.jar -DgroupId=org.w3c.dom.events_3.0.0 -DartifactId=draft20060413 -Dversion=v201105210656 -Dpackaging=jar
mvn install:install-file -Dfile=net.sourceforge.lpg.lpgjavaruntime_1.1.0.v201004271650.jar -DgroupId=net.sourceforge.lpg -DartifactId=lpgjavaruntime -Dversion=1.1.0.v201004271650 -Dpackaging=jar
mvn install:install-file -Dfile=org.eclipse.update.configurator_3.4.900.v20220718-1722.jar -DgroupId=org.eclipse.update -DartifactId=configurator -Dversion=3.4.900.v20220718-1722 -Dpackaging=jar
mvn install:install-file -Dfile=org.apache.lucene.analyzers-common_7.5.0.v20181003-1532.jar -DgroupId=org.apache.lucene -DartifactId=analyzers-common -Dversion=7.5.0.v20181003-1532 -Dpackaging=jar
mvn install:install-file -Dfile=org.eclipse.equinox.preferences_3.10.100.v20220710-1223.jar -DgroupId=org.eclipse.equinox -DartifactId=preferences -Dversion=3.10.100.v20220710-1223 -Dpackaging=jar
mvn install:install-file -Dfile=org.eclipse.datatools.connectivity_1.14.102.201911250848.jar -DgroupId=org.eclipse.datatools -DartifactId=connectivity -Dversion=1.14.102.201911250848 -Dpackaging=jar
mvn install:install-file -Dfile=org.eclipse.equinox.frameworkadmin_2.2.100.v20220817-1208.jar -DgroupId=org.eclipse.equinox -DartifactId=frameworkadmin -Dversion=2.2.100.v20220817-1208 -Dpackaging=jar
mvn install:install-file -Dfile=org.eclipse.datatools.connectivity.oda_3.6.101.201811012051.jar -DgroupId=org.eclipse.datatools.connectivity -DartifactId=oda -Dversion=3.6.101.201811012051 -Dpackaging=jar
mvn install:install-file -Dfile=org.eclipse.osgi.compatibility.state_1.2.700.v20220722-0431.jar -DgroupId=org.eclipse.osgi.compatibility -DartifactId=state -Dversion=1.2.700.v20220722-0431 -Dpackaging=jar
mvn install:install-file -Dfile=org.eclipse.equinox.simpleconfigurator_1.4.100.v20220620-1617.jar -DgroupId=org.eclipse.equinox -DartifactId=simpleconfigurator -Dversion=1.4.100.v20220620-1617 -Dpackaging=jar
mvn install:install-file -Dfile=org.eclipse.datatools.connectivity.sqm.core_1.4.101.201811012051.jar -DgroupId=org.eclipse.datatools.connectivity -DartifactId=sqm-core -Dversion=1.4.101.201811012051 -Dpackaging=jar
mvn install:install-file -Dfile=org.eclipse.equinox.frameworkadmin.equinox_1.2.200.v20220315-2155.jar -DgroupId=org.eclipse.equinox.frameworkadmin -DartifactId=equinox -Dversion=1.2.200.v20220315-2155 -Dpackaging=jar
mvn install:install-file -Dfile=org.eclipse.datatools.connectivity.db.generic_1.2.101.201811012051.jar -DgroupId=org.eclipse.datatools.connectivity.db -DartifactId=generic -Dversion=1.2.101.201811012051 -Dpackaging=jar
mvn install:install-file -Dfile=org.eclipse.datatools.connectivity.oda.design_3.5.101.201811012051.jar -DgroupId=org.eclipse.datatools.connectivity.oda -DartifactId=design -Dversion=3.5.101.201811012051 -Dpackaging=jar
mvn install:install-file -Dfile=org.eclipse.datatools.connectivity.oda.profile_3.4.101.201811012051.jar -DgroupId=org.eclipse.datatools.connectivity.oda -DartifactId=profile -Dversion=3.4.101.201811012051 -Dpackaging=jar
mvn install:install-file -Dfile=org.eclipse.datatools.connectivity.apache.derby_1.2.101.201811012051.jar -DgroupId=org.eclipse.datatools.connectivity.apache -DartifactId=derby -Dversion=1.2.101.201811012051 -Dpackaging=jar
mvn install:install-file -Dfile=org.eclipse.datatools.connectivity.oda.consumer_3.4.101.201811012051.jar -DgroupId=org.eclipse.datatools.connectivity.oda -DartifactId=consumer -Dversion=3.4.101.201811012051 -Dpackaging=jar
mvn install:install-file -Dfile=org.eclipse.datatools.connectivity.oda.flatfile_3.3.101.201811012051.jar -DgroupId=org.eclipse.datatools.connectivity.oda -DartifactId=flatfile -Dversion=3.3.101.201811012051 -Dpackaging=jar
mvn install:install-file -Dfile=org.eclipse.datatools.connectivity.console.profile_1.2.101.201811012051.jar -DgroupId=org.eclipse.datatools.connectivity -DartifactId=console-profile -Dversion=1.2.101.201811012051 -Dpackaging=jar
mvn install:install-file -Dfile=org.eclipse.equinox.simpleconfigurator.manipulator_2.2.0.v20210315-2228.jar -DgroupId=org.eclipse.equinox.simpleconfigurator -DartifactId=manipulator -Dversion=2.2.0.v20210315-2228 -Dpackaging=jar
mvn install:install-file -Dfile=org.eclipse.datatools.connectivity.dbdefinition.genericJDBC_1.2.101.201811012051.jar -DgroupId=org.eclipse.datatools.connectivity.dbdefinition -DartifactId=genericJDBC -Dversion=1.2.101.201811012051 -Dpackaging=jar
mvn install:install-file -Dfile=org.eclipse.datatools.connectivity.apache.derby.dbdefinition_1.2.101.201811012051.jar -DgroupId=org.eclipse.datatools.connectivity.apache.derby -DartifactId=dbdefinition -Dversion=1.2.101.201811012051 -Dpackaging=jar
mvn install:install-file -Dfile=org.w3c.flute_1.2.jar -DgroupId=org.w3c -DartifactId=flute -Dversion=1.2 -Dpackaging=jar