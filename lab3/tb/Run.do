if [file exists work] {vdel -all}
vlib work
vlog -f files.f
#vlog -f files.f
onbreak {resume}
set NoQuitOnFinish 1
vsim -voptargs=+acc work.sev_tb
#do wave.do
run 200ms
