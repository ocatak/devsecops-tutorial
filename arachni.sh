ARACHNI_REPORT_PATH=~/arachni-reports
~/arachni-1.5.1-0.5.12/bin/arachni http://192.168.2.164:5000 --report-save-path=$ARACHNI_REPORT_PATH/report.afr
~/arachni-1.5.1-0.5.12/bin/arachni_reporter $ARACHNI_REPORT_PATH/report.afr --reporter=html:outfile=$ARACHNI_REPORT_PATH/report.zip
unzip $ARACHNI_REPORT_PATH/report.zip -d $ARACHNI_REPORT_PATH
rm -f $ARACHNI_REPORT_PATH/report.zip
