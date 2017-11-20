.class public final Lcom/google/android/location/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:Lcom/google/android/gms/common/a/b;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final B:Lcom/google/android/gms/common/a/b;

.field public static final C:Lcom/google/android/gms/common/a/b;

.field public static final D:Lcom/google/android/gms/common/a/b;

.field public static final E:J

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

.field public static Q:Lcom/google/android/gms/common/a/b;

.field public static final a:Lcom/google/android/gms/common/a/b;

.field public static final b:Lcom/google/android/gms/common/a/b;

.field public static final c:Lcom/google/android/gms/common/a/b;

.field public static final d:Lcom/google/android/gms/common/a/b;

.field public static final e:Lcom/google/android/gms/common/a/b;

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

.field public static u:Lcom/google/android/gms/common/a/b;

.field public static v:Lcom/google/android/gms/common/a/b;

.field public static w:Lcom/google/android/gms/common/a/b;

.field public static x:Lcom/google/android/gms/common/a/b;

.field public static final y:Lcom/google/android/gms/common/a/b;

.field public static final z:Lcom/google/android/gms/common/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const-wide/16 v6, 0xa

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 21
    const-string v0, "location:analytics_enabled"

    invoke-static {v0, v5}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/x;->a:Lcom/google/android/gms/common/a/b;

    .line 31
    const-string v0, "location:user_domain"

    const-string v1, "unknown"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/x;->b:Lcom/google/android/gms/common/a/b;

    .line 38
    const-string v0, "location:places_log_to_playlog"

    invoke-static {v0, v4}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/x;->c:Lcom/google/android/gms/common/a/b;

    .line 42
    const-string v0, "location:places_log_api_calls"

    invoke-static {v0, v4}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/x;->d:Lcom/google/android/gms/common/a/b;

    .line 46
    const-string v0, "location:places_log_method_calls"

    invoke-static {v0, v4}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/x;->e:Lcom/google/android/gms/common/a/b;

    .line 50
    const-string v0, "location:places_log_place_picker"

    invoke-static {v0, v4}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/x;->f:Lcom/google/android/gms/common/a/b;

    .line 54
    const-string v0, "location:places_sensors_logging_interval_msec"

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/x;->g:Lcom/google/android/gms/common/a/b;

    .line 58
    const-string v0, "location:places_enable_implicit_logging_location"

    invoke-static {v0, v4}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/x;->h:Lcom/google/android/gms/common/a/b;

    .line 62
    const-string v0, "location:places_enable_implicit_logging_wifi"

    invoke-static {v0, v4}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/x;->i:Lcom/google/android/gms/common/a/b;

    .line 66
    const-string v0, "location:places_get_location_deadline_msec"

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/x;->j:Lcom/google/android/gms/common/a/b;

    .line 71
    const-string v0, "location:places_get_location_retry_interval_msec"

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/x;->k:Lcom/google/android/gms/common/a/b;

    .line 76
    const-string v0, "location:places_whitelisted_partners"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/x;->l:Lcom/google/android/gms/common/a/b;

    .line 80
    const-string v0, "location:places_add_apiary_info"

    invoke-static {v0, v4}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/x;->m:Lcom/google/android/gms/common/a/b;

    .line 87
    const-string v0, "location:places_latency_collection_fraction"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Float;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/x;->n:Lcom/google/android/gms/common/a/b;

    .line 94
    const-string v0, "location:location_analytics_tracking_id"

    const-string v1, "UA-44492294-1"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/x;->o:Lcom/google/android/gms/common/a/b;

    .line 101
    const-string v0, "location:places_analytics_tracking_id"

    const-string v1, "UA-53776808-1"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/x;->p:Lcom/google/android/gms/common/a/b;

    .line 108
    const-string v0, "location:places_analytics_sampling_rate_percent"

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Float;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/x;->q:Lcom/google/android/gms/common/a/b;

    .line 112
    const-string v0, "location:places:use_wifi_place_cache"

    invoke-static {v0, v5}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/x;->r:Lcom/google/android/gms/common/a/b;

    .line 116
    const-string v0, "location:places_default_nearby_alert_place_radius_meters"

    const/high16 v1, 0x43160000    # 150.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Float;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/x;->s:Lcom/google/android/gms/common/a/b;

    .line 121
    const-string v0, "location:places_default_nearby_alert_refresh_radius_meters"

    const/high16 v1, 0x447a0000    # 1000.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Float;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/x;->t:Lcom/google/android/gms/common/a/b;

    .line 129
    const-string v0, "url:location:personalized_places_server_url"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/x;->u:Lcom/google/android/gms/common/a/b;

    .line 133
    const-string v0, "location:personalized_places_server_enabled"

    invoke-static {v0, v4}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/x;->v:Lcom/google/android/gms/common/a/b;

    .line 137
    const-string v0, "location:personalized_places_api_path"

    const-string v1, "/locationmessaging/v2beta/locationPlatform/"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/x;->w:Lcom/google/android/gms/common/a/b;

    .line 141
    const-string v0, "location:personalized_places_auth_scope"

    const-string v1, "https://www.googleapis.com/auth/offers.lmp"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/x;->x:Lcom/google/android/gms/common/a/b;

    .line 152
    const-string v0, "location:personalized_places_user_data_white_list"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/x;->y:Lcom/google/android/gms/common/a/b;

    .line 159
    const-string v0, "location:flp_battery_threshold_full_power"

    const v1, 0x3f666666    # 0.9f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Float;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/x;->z:Lcom/google/android/gms/common/a/b;

    .line 163
    const-string v0, "location:flp_enable_hal_debug"

    invoke-static {v0, v5}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/x;->A:Lcom/google/android/gms/common/a/b;

    .line 169
    const-string v0, "location:flp_hal_mode"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/x;->B:Lcom/google/android/gms/common/a/b;

    .line 173
    const-string v0, "location:flp_low_power_gps_min_interval_ms"

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/x;->C:Lcom/google/android/gms/common/a/b;

    .line 176
    const-string v0, "location:flp_low_power_gps_pulse_ms"

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xf

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/x;->D:Lcom/google/android/gms/common/a/b;

    .line 182
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/location/x;->E:J

    .line 190
    const-string v0, "location:flp_low_power_mode_min_interval_ms"

    sget-wide v2, Lcom/google/android/location/x;->E:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/x;->F:Lcom/google/android/gms/common/a/b;

    .line 196
    const-string v0, "location:flp_smallestDisplacementMode"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/x;->G:Lcom/google/android/gms/common/a/b;

    .line 206
    const-string v0, "location:enable_hardware_geofencing"

    invoke-static {v0, v4}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/x;->H:Lcom/google/android/gms/common/a/b;

    .line 213
    const-string v0, "location:flp_geofence_enable_hal_debug"

    invoke-static {v0, v5}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/x;->I:Lcom/google/android/gms/common/a/b;

    .line 221
    const-string v0, "location:force_hardware_geofence_when_available"

    invoke-static {v0, v5}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/x;->J:Lcom/google/android/gms/common/a/b;

    .line 229
    const-string v0, "location:use_hardware_geofence_when_unavailable"

    invoke-static {v0, v5}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/x;->K:Lcom/google/android/gms/common/a/b;

    .line 236
    const-string v0, "location:place_picker_enable_query_suggestions"

    invoke-static {v0, v4}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/x;->L:Lcom/google/android/gms/common/a/b;

    .line 240
    const-string v0, "location:place_picker_my_location_deadline"

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/x;->M:Lcom/google/android/gms/common/a/b;

    .line 245
    const-string v0, "location:place_picker_reverse_geocoding_deadline"

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/x;->N:Lcom/google/android/gms/common/a/b;

    .line 249
    const-string v0, "location:place_picker_max_results"

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/x;->O:Lcom/google/android/gms/common/a/b;

    .line 253
    const-string v0, "location:place_picker_places_server_deadline"

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/x;->P:Lcom/google/android/gms/common/a/b;

    .line 258
    const-string v0, "location:place_inference_module_list"

    const-string v1, "ReverseGeocodingPlaceInferenceModule,WifiDecisionTreePlaceInferenceModule"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/x;->Q:Lcom/google/android/gms/common/a/b;

    return-void
.end method
