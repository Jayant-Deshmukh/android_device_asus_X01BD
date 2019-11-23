# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    af.fast_track_multiplier=1 \
    audio.deep_buffer.media=true \
    audio.offload.min.duration.secs=30 \
    audio.offload.video=true \
    audio.sys.noisy.broadcast.delay=600 \
    audio.sys.offload.pstimeout.secs=3 \
    persist.vendor.audio.fluence.speaker=false \
    persist.vendor.audio.fluence.voicecall=true \
    persist.vendor.audio.fluence.voicerec=true \
    persist.vendor.audio.hw.binder.size_kbyte=1024 \
    persist.vendor.audio.hifi.int_codec=true \
    persist.vendor.audio.ras.enabled=false \
    ro.vendor.audio.sdk.fluencetype=fluence  \
    ro.vendor.audio.sdk.ssr=false \
    vendor.audio.dolby.ds2.enabled=false \
    vendor.audio.dolby.ds2.hardbypass=false \
    vendor.audio.flac.sw.decoder.24bit=true \
    vendor.audio.hw.aac.encoder=true \
    vendor.audio.offload.buffer.size.kb=64 \
    vendor.audio.offload.gapless.enabled=true \
    vendor.audio.offload.multiaac.enable=true \
    vendor.audio.offload.multiple.enabled=false \
    vendor.audio.offload.passthrough=false \
    vendor.audio.offload.track.enable=true \
    vendor.audio.parser.ip.buffer.size=262144 \
    vendor.audio.safx.pbe.enabled=true \
    vendor.audio.spkr_prot.tx.sampling_rate=48000 \
    vendor.audio.tunnel.encode=false \
    vendor.audio.use.sw.alac.decoder=true \
    vendor.audio.use.sw.ape.decoder=true \
    vendor.audio_hal.period_size=192 \
    vendor.voice.path.for.pcm.voip=false \
    vendor.audio_hal.in_period_size=144 \
    vendor.audio_hal.period_multiplier=3 \
    vendor.audio.adm.buffering.ms=2 \

 # Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    persist.bluetooth.bluetooth_audio_hal.disabled=true \
    vendor.bluetooth.soc=cherokee \
    vendor.qcom.bluetooth.soc=cherokee \
    persist.vendor.bt.aac_frm_ctl.enabled=true \
    persist.vendor.btstack.enable.splita2dp=true \
    persist.vendor.btstack.a2dp_offload_cap=sbc-aptx-aptxhd-aac

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.camera.eis.enable=1 \
    persist.vendor.camera.is_type=4 \
    persist.vendor.camera.expose.aux=1 \
    persist.vendor.camera.HAL3.enabled=1 \
    persist.vendor.camera.preview.ubwc=0 \
    persist.ts.rtmakeup=1 \
    vendor.camera.aux.packagelist=org.codeaurora.snapcam \
    vendor.camera.hal1.packagelist=com.whatsapp,com.facebook.katana,com.instagram.android,com.snapchat.android

# Codec2 switch
PRODUCT_PROPERTY_OVERRIDES += \
    debug.media.codec2=2

# Charging maximum voltage
PRODUCT_PROPERTY_OVERRIDES += \
    persist.chg.max_volt_mv=9000

# CNE
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.cne.feature=1

# DPM
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.dpm.feature=1
    persist.vendor.dpm.nsrm.bkg.evt=3955

# Dalvik overrides
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapgrowthlimit=256m \
    dalvik.vm.heapstartsize=8m \
    dalvik.vm.heapsize=512m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapminfree=512k \
    dalvik.vm.heapmaxfree=8m

# Data modules
PRODUCT_PROPERTY_OVERRIDES += \
    persist.data.iwlan.enable=true \
    persist.vendor.data.mode=concurrent \
    ro.vendor.use_data_netmgrd=true

# DRM
PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true

# Enable stm-events
PRODUCT_PROPERTY_OVERRIDES += \
    persist.debug.coresight.config=stm-events

# FM
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.fm.a2dp.conc.disabled=false

# FRP
PRODUCT_PROPERTY_OVERRIDES += \
    ro.frp.pst=/dev/block/bootdevice/by-name/frp

# Graphics
PRODUCT_PROPERTY_OVERRIDES += \
    debug.sf.enable_hwc_vds=1 \
    debug.sf.hw=1 \
    debug.sf.early_phase_offset_ns=5000000 \
    vendor.gralloc.enable_fb_ubwc=1 \
    debug.hwui.use_buffer_age=false \
    dev.pm.dyn_samplingrate=1 \
    persist.demo.hdmirotationlock=false \
    ro.opengles.version=196610 \
    ro.sf.lcd_density=480 \
    sys.use_fifo_ui=1 \
    sdm.debug.rotator_downscale=1 \
    vendor.display.enable_default_color_mode=1

# IOP
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.iop.enable_uxe=0 \
    vendor.iop.enable_prefetch_ofr=0

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    media.aac_51_output_enabled=true \
    media.stagefright.enable-aac=true \
    media.stagefright.enable-http=true \
    media.stagefright.enable-player=true \
    media.stagefright.enable-qcp=true \
    media.stagefright.enable-scan=true \
    vendor.mm.enable.qcom_parser=13631487 \
    mm.enable.smoothstreaming=true \
    mmp.enable.3g2=true \
    persist.mm.enable.prefetch=true \
    vendor.vidc.dec.enable.downscalar=1 \
    vendor.vidc.enc.disable.pq=false \
    vendor.vidc.enc.disable_bframes=1 \
    vidc.enc.dcvs.extra-buff-count=2 \
    vidc.enc.target_support_bframe=1 \
    ro.config.media_vol_steps=30 \

# Misc
PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true

# Netflix
PRODUCT_PROPERTY_OVERRIDES += \
    ro.netflix.bsp_rev=Q660-13149-1

# NFC
PRODUCT_PROPERTY_OVERRIDES += \
    ro.nfc.port=I2C \
    ro.hardware.nfc_nci=pn8x \
    persist.nfc.smartcard.config=SIM1

# NTP Server
PRODUCT_PROPERTY_OVERRIDES += \
    persist.backup.ntpServer="0.pool.ntp.org"

# QCOM cabl
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qualcomm.cabl=2 \
    ro.vendor.display.cabl=2

# QTI
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.at_library=libqti-at.so \
    ro.vendor.extension_library=libqti-perfd-client.so \
    ro.vendor.qti.core_ctl_max_cpu=4 \
    ro.vendor.qti.core_ctl_min_cpu=2 \
    ro.vendor.qti.sys.fw.bg_apps_limit=60

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    DEVICE_PROVISIONED=1 \
    persist.vendor.radio.atfwd.start=true \
    persist.radio.multisim.config=dsds \
    persist.radio.schd.cache=3500 \
    persist.radio.aosp_usr_pref_sel=true \
    persist.vendor.radio.apm_sim_not_pwdn=1 \
    persist.vendor.radio.custom_ecc=1 \
    persist.vendor.radio.rat_on=combine \
    persist.vendor.radio.sib16_support=1 \
    persist.vendor.radio.add_power_save=1 \
    persist.vendor.radio.data_ltd_sys_ind=1 \
    persist.vendor.radio.data_con_rprt=1 \
    ril.subscription.types=NV,RUIM \
    rild.libpath=/vendor/lib64/libril-qc-qmi-1.so \
    ro.com.android.dataroaming=false \
    ro.config.vc_call_vol_steps=11 \
    ro.telephony.default_network=20,20 \
    telephony.lteOnCdmaDevice=1

# Radio - IMS
PRODUCT_PROPERTY_OVERRIDES += \
    persist.dbg.ims_volte_enable=1 \
    persist.dbg.volte_avail_ovr=1 \
    persist.dbg.vt_avail_ovr=1 \
    persist.dbg.wfc_avail_ovr=1 \
    persist.vendor.ims.disableADBLogs=1 \
    persist.vendor.ims.disableQXDMLogs=1 \
    persist.vendor.ims.disableDebugLogs=1 \
    persist.vendor.ims.disableIMSLogs=1 \
    persist.vendor.qti.telephony.vt_cam_interface=1 \
    persist.radio.VT_CAM_INTERFACE=2

# RmNet Data
PRODUCT_PROPERTY_OVERRIDES += \
    persist.data.df.dev_name=rmnet_usb0 \
    persist.rmnet.data.enable=true

# Sensor
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.qti.sdk.sensors.gestures=false \
    ro.vendor.qti.sensors.dev_ori=true \
    ro.vendor.qti.sensors.pmd=true \
    ro.vendor.qti.sensors.sta_detect=true \
    ro.vendor.qti.sensors.mot_detect=true \
    ro.vendor.qti.sensors.facing=false \
    ro.vendor.qti.sensors.cmc=false

# Skip Validate Disable
PRODUCT_PROPERTY_OVERRIDES += \
    sdm.debug.disable_skip_validate=1 \
    vendor.display.disable_skip_validate=1

# Shutdown
PRODUCT_PROPERTY_OVERRIDES += \
    sys.vendor.shutdown.waittime=500

# SurfaceFlinger
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.surface_flinger.force_hwc_copy_for_virtual_displays=true \
    ro.surface_flinger.max_virtual_display_dimension=4096 \
    ro.surface_flinger.vsync_event_phase_offset_ns=2000000 \
    ro.surface_flinger.vsync_sf_event_phase_offset_ns=6000000

PRODUCT_PROPERTY_OVERRIDES += \
    debug.sf.early_phase_offset_ns=1500000 \
    debug.sf.early_app_phase_offset_ns=1500000 \
    debug.sf.early_gl_phase_offset_ns=3000000 \
    debug.sf.early_gl_app_phase_offset_ns=15000000

# System prop for UBWC
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.video.disable.ubwc=1

# Time
PRODUCT_PROPERTY_OVERRIDES += \
    persist.timed.enable=true

# USB
PRODUCT_PROPERTY_OVERRIDES += \
    ro.usb.firstboot.config=diag,serial_cdev,rmnet,adb

# WFD display
PRODUCT_PROPERTY_OVERRIDES += \
    persist.debug.wfd.enable=1 \
    persist.hwc.enable_vds=1 \
    persist.sys.wfd.virtual=0
