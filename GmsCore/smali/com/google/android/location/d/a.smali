.class public final Lcom/google/android/location/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
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

.field public static final u:Lcom/google/android/gms/common/a/b;

.field public static final v:Lcom/google/android/gms/common/a/b;

.field public static final w:Lcom/google/android/gms/common/a/b;

.field public static final x:Lcom/google/android/gms/common/a/b;

.field public static final y:Lcom/google/android/gms/common/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 26
    const-string v0, "location:significant_motion_disabled"

    invoke-static {v0, v4}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/d/a;->a:Lcom/google/android/gms/common/a/b;

    .line 34
    const-string v0, "location:collection_enabled"

    invoke-static {v0, v5}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/d/a;->b:Lcom/google/android/gms/common/a/b;

    .line 42
    const-string v0, "location:stats_collect_nlp_api"

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Float;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/d/a;->c:Lcom/google/android/gms/common/a/b;

    .line 50
    const-string v0, "location:stats_collect_nlp_loctype"

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Float;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/d/a;->d:Lcom/google/android/gms/common/a/b;

    .line 58
    const-string v0, "location:stats_collect_wifi_batch"

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Float;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/d/a;->e:Lcom/google/android/gms/common/a/b;

    .line 66
    const-string v0, "location:stats_collect_nlp_settings"

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Float;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/d/a;->f:Lcom/google/android/gms/common/a/b;

    .line 73
    const-string v0, "location:off_body_detection_angular_threshold"

    const v1, 0x3d4ccccd    # 0.05f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Float;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/d/a;->g:Lcom/google/android/gms/common/a/b;

    .line 82
    const-string v0, "location:off_body_detection_delay_millis"

    const v1, 0x1b7740

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/d/a;->h:Lcom/google/android/gms/common/a/b;

    .line 91
    const-string v0, "location:off_body_detection_interval_seconds"

    const/16 v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/d/a;->i:Lcom/google/android/gms/common/a/b;

    .line 101
    const-string v0, "location:use_wifi_scanner"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/d/a;->j:Lcom/google/android/gms/common/a/b;

    .line 109
    const-string v0, "location:gpwle_flags"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/d/a;->k:Lcom/google/android/gms/common/a/b;

    .line 116
    const-string v0, "location:stats_collect_nlp_enabled"

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Float;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/d/a;->l:Lcom/google/android/gms/common/a/b;

    .line 122
    const-string v0, "location:sensor_batching_enabled"

    invoke-static {v0, v4}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/d/a;->m:Lcom/google/android/gms/common/a/b;

    .line 129
    const-string v0, "location:wake_up_tilt_detector_enabled"

    invoke-static {v0, v5}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/d/a;->n:Lcom/google/android/gms/common/a/b;

    .line 136
    const-string v0, "location:hardware_activity_recognition_log_report_latency_millis_2"

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/d/a;->o:Lcom/google/android/gms/common/a/b;

    .line 142
    const-string v0, "location:hardware_activity_recognition_upload_enabled"

    invoke-static {v0, v4}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/d/a;->p:Lcom/google/android/gms/common/a/b;

    .line 148
    const-string v0, "url:google_location_server"

    invoke-static {v0, v6}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/d/a;->q:Lcom/google/android/gms/common/a/b;

    .line 154
    const-string v0, "network_location_provider_debug"

    invoke-static {v0, v6}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/d/a;->r:Lcom/google/android/gms/common/a/b;

    .line 160
    const-string v0, "android_id"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/d/a;->s:Lcom/google/android/gms/common/a/b;

    .line 166
    const-string v0, "location:activity_low_power_mode_enabled"

    invoke-static {v0, v5}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/d/a;->t:Lcom/google/android/gms/common/a/b;

    .line 173
    const-string v0, "location:activity_power_save_mode_min_interval_millis"

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/d/a;->u:Lcom/google/android/gms/common/a/b;

    .line 179
    const-string v0, "location:use_wifi_rtt"

    invoke-static {v0, v4}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/d/a;->v:Lcom/google/android/gms/common/a/b;

    .line 185
    const-string v0, "location:wifi_rtt_samples"

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/d/a;->w:Lcom/google/android/gms/common/a/b;

    .line 191
    const-string v0, "location:wifi_rtt_retries"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/d/a;->x:Lcom/google/android/gms/common/a/b;

    .line 197
    const-string v0, "location:phone_position_detection_enabled"

    invoke-static {v0, v4}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/d/a;->y:Lcom/google/android/gms/common/a/b;

    return-void
.end method

.method public static a(Lcom/google/android/gms/common/a/b;)Z
    .locals 4

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 206
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    double-to-float v1, v2

    cmpg-float v0, v1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
