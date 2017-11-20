.class public final Lcom/google/android/location/reporting/service/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:Lcom/google/android/gms/common/a/b;

.field public static final B:Lcom/google/android/gms/common/a/b;

.field public static final C:Lcom/google/android/gms/common/a/b;

.field public static final D:Lcom/google/android/gms/common/a/b;

.field public static final E:Lcom/google/android/gms/common/a/b;

.field public static final F:Lcom/google/android/gms/common/a/b;

.field public static final G:Lcom/google/android/gms/common/a/b;

.field public static final H:Lcom/google/android/gms/common/a/b;

.field public static final I:Lcom/google/android/gms/common/a/b;

.field public static final J:Lcom/google/android/gms/common/a/b;

.field public static final K:Lcom/google/android/gms/common/a/b;

.field public static final L:Lcom/google/android/gms/common/a/b;

.field public static final M:Lcom/google/android/gms/common/a/b;

.field public static final N:Lcom/google/android/gms/common/a/b;

.field public static final O:Lcom/google/android/gms/common/a/b;

.field public static final P:Lcom/google/android/gms/common/a/b;

.field public static final Q:Lcom/google/android/gms/common/a/b;

.field public static final a:Lcom/google/android/gms/common/a/b;

.field public static final b:Lcom/google/android/gms/common/a/b;

.field static final c:Lcom/google/android/gms/common/a/b;

.field static final d:Lcom/google/android/gms/common/a/b;

.field static final e:Lcom/google/android/gms/common/a/b;

.field public static final f:Lcom/google/android/gms/common/a/b;

.field public static final g:Lcom/google/android/gms/common/a/b;

.field public static final h:Lcom/google/android/gms/common/a/b;

.field public static final i:Lcom/google/android/gms/common/a/b;

.field public static final j:Lcom/google/android/gms/common/a/b;

.field public static final k:Lcom/google/android/gms/common/a/b;

.field public static final l:Lcom/google/android/gms/common/a/b;

.field public static final m:Lcom/google/android/gms/common/a/b;

.field public static final n:Lcom/google/android/gms/common/a/b;

.field public static final o:Lcom/google/android/gms/common/a/b;

.field public static final p:Lcom/google/android/gms/common/a/b;

.field public static final q:Lcom/google/android/gms/common/a/b;

.field public static final r:Lcom/google/android/gms/common/a/b;

.field public static final s:Lcom/google/android/gms/common/a/b;

.field public static final t:Lcom/google/android/gms/common/a/b;

.field public static final u:Lcom/google/android/gms/common/a/b;

.field public static final v:Lcom/google/android/gms/common/a/b;

.field public static final w:Lcom/google/android/gms/common/a/b;

.field public static final x:Lcom/google/android/gms/common/a/b;

.field public static final y:Lcom/google/android/gms/common/a/b;

.field public static final z:Lcom/google/android/gms/common/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x3

    const-wide/16 v8, 0x2

    const/4 v7, 0x1

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    .line 33
    const-string v0, "user_location_reporting:is_supported_geo"

    invoke-static {v0, v6}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/reporting/service/y;->a:Lcom/google/android/gms/common/a/b;

    .line 72
    const-string v0, "user_location_reporting:opt_in_packages"

    const-string v1, "com.google.android.gms,com.google.android.apps.fitness,com.google.android.googlequicksearchbox,com.google.android.apps.plus,com.google.android.gm,com.google.android.apps.maps,com.google.android.apps.ridematch"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/reporting/service/y;->b:Lcom/google/android/gms/common/a/b;

    .line 78
    const-string v0, "user_location_reporting:burst_api_packages"

    const-string v1, "com.google.android.gms,com.google.android.googlequicksearchbox,com.google.android.apps.plus,com.google.android.apps.maps,com.google.android.apps.gmm,com.google.android.apps.gmm.fishfood,com.google.android.apps.gmm.dev"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/reporting/service/y;->c:Lcom/google/android/gms/common/a/b;

    .line 85
    const-string v0, "user_location_reporting:device_tag_api_packages"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/reporting/service/y;->d:Lcom/google/android/gms/common/a/b;

    .line 93
    const-string v0, "user_location_reporting:max_bind_to_gmm_millis"

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x10

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/reporting/service/y;->e:Lcom/google/android/gms/common/a/b;

    .line 100
    const-string v0, "user_location_reporting:location_sample_default_millis"

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/reporting/service/y;->f:Lcom/google/android/gms/common/a/b;

    .line 109
    const-string v0, "user_location_reporting:location_sample_low_power_millis"

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x12

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/reporting/service/y;->g:Lcom/google/android/gms/common/a/b;

    .line 118
    const-string v0, "user_location_reporting:location_sample_min_millis"

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2d

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/reporting/service/y;->h:Lcom/google/android/gms/common/a/b;

    .line 124
    const-string v0, "user_location_reporting:activity_detection_millis"

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/reporting/service/y;->i:Lcom/google/android/gms/common/a/b;

    .line 132
    const-string v0, "user_location_reporting:activity_detection_min_millis"

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/reporting/service/y;->j:Lcom/google/android/gms/common/a/b;

    .line 138
    const-string v0, "user_location_reporting:include_wifi_scans"

    invoke-static {v0, v7}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/reporting/service/y;->k:Lcom/google/android/gms/common/a/b;

    .line 145
    const-string v0, "user_location_reporting:millis_between_wifi_scan_attachment"

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/reporting/service/y;->l:Lcom/google/android/gms/common/a/b;

    .line 153
    const-string v0, "user_location_reporting:include_ap_connectivity_auth_info"

    invoke-static {v0, v6}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/reporting/service/y;->m:Lcom/google/android/gms/common/a/b;

    .line 161
    const-string v0, "user_location_reporting:attach_wifi_scan_proximity_ns"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/reporting/service/y;->n:Lcom/google/android/gms/common/a/b;

    .line 168
    const-string v0, "user_location_reporting:include_ble_scan"

    invoke-static {v0, v6}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/reporting/service/y;->o:Lcom/google/android/gms/common/a/b;

    .line 174
    const-string v0, "user_location_reporting:enable_native_ble_api"

    invoke-static {v0, v6}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/reporting/service/y;->p:Lcom/google/android/gms/common/a/b;

    .line 180
    const-string v0, "user_location_reporting:ble_scan_active_time_millis"

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/reporting/service/y;->q:Lcom/google/android/gms/common/a/b;

    .line 189
    const-string v0, "user_location_reporting:ble_scan_period_millis"

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/reporting/service/y;->r:Lcom/google/android/gms/common/a/b;

    .line 196
    const-string v0, "user_location_reporting:include_gbeacon_v3_in_scans"

    invoke-static {v0, v7}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/reporting/service/y;->s:Lcom/google/android/gms/common/a/b;

    .line 202
    const-string v0, "user_location_reporting:include_ibeacon_in_scans"

    invoke-static {v0, v6}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/reporting/service/y;->t:Lcom/google/android/gms/common/a/b;

    .line 208
    const-string v0, "user_location_reporting:seconds_beteween_syncs"

    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x18

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/reporting/service/y;->u:Lcom/google/android/gms/common/a/b;

    .line 215
    const-string v0, "user_location_reporting:min_delta_meters"

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Float;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/reporting/service/y;->v:Lcom/google/android/gms/common/a/b;

    .line 222
    const-string v0, "user_location_reporting:accuracy_multiplier"

    const/high16 v1, 0x40200000    # 2.5f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Float;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/reporting/service/y;->w:Lcom/google/android/gms/common/a/b;

    .line 228
    const-string v0, "user_location_reporting:moving_phone_latency_millis"

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/reporting/service/y;->x:Lcom/google/android/gms/common/a/b;

    .line 234
    const-string v0, "user_location_reporting:stationary_phone_latency_millis"

    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/reporting/service/y;->y:Lcom/google/android/gms/common/a/b;

    .line 240
    const-string v0, "user_location_reporting:moving_tablet_latency_millis"

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/reporting/service/y;->z:Lcom/google/android/gms/common/a/b;

    .line 249
    const-string v0, "user_location_reporting:stationary_tablet_latency_millis"

    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/reporting/service/y;->A:Lcom/google/android/gms/common/a/b;

    .line 255
    const-string v0, "user_location_reporting:charging_in_vehicle_latency_millis"

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/reporting/service/y;->B:Lcom/google/android/gms/common/a/b;

    .line 264
    const-string v0, "user_location_reporting:max_burst_duration_millis"

    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/reporting/service/y;->C:Lcom/google/android/gms/common/a/b;

    .line 270
    const-string v0, "user_location_reporting:api_url"

    const-string v1, "https://www.googleapis.com/"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/reporting/service/y;->D:Lcom/google/android/gms/common/a/b;

    .line 276
    const-string v0, "user_location_reporting:api_path"

    const-string v1, "userlocation/v1/"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/reporting/service/y;->E:Lcom/google/android/gms/common/a/b;

    .line 284
    const-string v0, "user_location_reporting:upload_max_retries"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/reporting/service/y;->F:Lcom/google/android/gms/common/a/b;

    .line 296
    const-string v0, "user_location_reporting:upload_timeout_millis"

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/reporting/service/y;->G:Lcom/google/android/gms/common/a/b;

    .line 302
    const-string v0, "user_location_reporting:upload_backoff_mult"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Float;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/reporting/service/y;->H:Lcom/google/android/gms/common/a/b;

    .line 309
    const-string v0, "user_location_reporting:log_to_file"

    invoke-static {v0, v6}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/reporting/service/y;->I:Lcom/google/android/gms/common/a/b;

    .line 318
    const-string v0, "user_location_reporting:log_file_size"

    const v1, 0x18000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/reporting/service/y;->J:Lcom/google/android/gms/common/a/b;

    .line 327
    const-string v0, "user_location_reporting:long_lived_log_file_size"

    const v1, 0x8000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/reporting/service/y;->K:Lcom/google/android/gms/common/a/b;

    .line 336
    const-string v0, "user_location_reporting:analytics_throttle"

    const/16 v1, 0xfa0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/reporting/service/y;->L:Lcom/google/android/gms/common/a/b;

    .line 343
    const-string v0, "user_location_reporting:upload_location_status"

    invoke-static {v0, v7}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/reporting/service/y;->M:Lcom/google/android/gms/common/a/b;

    .line 355
    const-string v0, "user_location_reporting:upload_location_status"

    sget-wide v2, Lcom/google/android/location/x;->E:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/reporting/service/y;->N:Lcom/google/android/gms/common/a/b;

    .line 366
    const-string v0, "user_location_reporting:experiment_id"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/reporting/service/y;->O:Lcom/google/android/gms/common/a/b;

    .line 374
    const-string v0, "user_location_reporting:experiment_group"

    const-string v1, "experiment"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/reporting/service/y;->P:Lcom/google/android/gms/common/a/b;

    .line 377
    const-string v0, "user_location_reporting:enable_gcm"

    invoke-static {v0, v6}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/reporting/service/y;->Q:Lcom/google/android/gms/common/a/b;

    return-void
.end method
