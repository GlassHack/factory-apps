.class public final Lcom/google/android/gms/analytics/internal/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static A:Lcom/google/android/gms/common/a/b;

.field public static B:Lcom/google/android/gms/common/a/b;

.field public static a:Lcom/google/android/gms/common/a/b;

.field public static b:Lcom/google/android/gms/common/a/b;

.field public static c:Lcom/google/android/gms/common/a/b;

.field public static d:Lcom/google/android/gms/common/a/b;

.field public static e:Lcom/google/android/gms/common/a/b;

.field public static f:Lcom/google/android/gms/common/a/b;

.field public static g:Lcom/google/android/gms/common/a/b;

.field public static h:Lcom/google/android/gms/common/a/b;

.field public static i:Lcom/google/android/gms/common/a/b;

.field public static j:Lcom/google/android/gms/common/a/b;

.field public static k:Lcom/google/android/gms/common/a/b;

.field public static l:Lcom/google/android/gms/common/a/b;

.field public static m:Lcom/google/android/gms/common/a/b;

.field public static n:Lcom/google/android/gms/common/a/b;

.field public static o:Lcom/google/android/gms/common/a/b;

.field public static p:Lcom/google/android/gms/common/a/b;

.field public static q:Lcom/google/android/gms/common/a/b;

.field public static r:Lcom/google/android/gms/common/a/b;

.field public static s:Lcom/google/android/gms/common/a/b;

.field public static t:Lcom/google/android/gms/common/a/b;

.field public static u:Lcom/google/android/gms/common/a/b;

.field public static v:Lcom/google/android/gms/common/a/b;

.field public static w:Lcom/google/android/gms/common/a/b;

.field public static x:Lcom/google/android/gms/common/a/b;

.field public static y:Lcom/google/android/gms/common/a/b;

.field public static z:Lcom/google/android/gms/common/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x1c00

    const/16 v5, 0x14

    const/4 v4, 0x0

    .line 15
    const-string v0, "analytics.service_enabled"

    invoke-static {v0, v4}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/k;->a:Lcom/google/android/gms/common/a/b;

    .line 18
    const-string v0, "analytics.log_tag"

    const-string v1, "GA-SERVICE"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/k;->b:Lcom/google/android/gms/common/a/b;

    .line 31
    const-string v0, "analytics.max_tokens"

    const-wide/16 v2, 0x3c

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/k;->c:Lcom/google/android/gms/common/a/b;

    .line 33
    const-string v0, "analytics.tokens_per_sec"

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Float;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/k;->d:Lcom/google/android/gms/common/a/b;

    .line 37
    const-string v0, "analytics.stale_hits_sec"

    const-wide v2, 0x9a7ec800L

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/k;->e:Lcom/google/android/gms/common/a/b;

    .line 39
    const-string v0, "analytics.max_stored_hits"

    const/16 v1, 0x4e20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/k;->f:Lcom/google/android/gms/common/a/b;

    .line 41
    const-string v0, "analytics.max_stored_hits_per_app"

    const/16 v1, 0x7d0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/k;->g:Lcom/google/android/gms/common/a/b;

    .line 45
    const-string v0, "analytics.dispatch_period_sec"

    const/16 v1, 0x78

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/k;->h:Lcom/google/android/gms/common/a/b;

    .line 47
    const-string v0, "analytics.max_hits_per_dispatch"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/k;->i:Lcom/google/android/gms/common/a/b;

    .line 49
    const-string v0, "analytics.insecure_host"

    const-string v1, "http://www.google-analytics.com"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/k;->j:Lcom/google/android/gms/common/a/b;

    .line 51
    const-string v0, "analytics.secure_host"

    const-string v1, "https://ssl.google-analytics.com"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/k;->k:Lcom/google/android/gms/common/a/b;

    .line 53
    const-string v0, "analytics.simple_endpoint"

    const-string v1, "/collect"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/k;->l:Lcom/google/android/gms/common/a/b;

    .line 55
    const-string v0, "analytics.batching_endpoint"

    const-string v1, "/batch"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/k;->m:Lcom/google/android/gms/common/a/b;

    .line 57
    const-string v0, "analytics.max_get_length"

    const/16 v1, 0x7f4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/k;->n:Lcom/google/android/gms/common/a/b;

    .line 61
    const-string v0, "analytics.batching_strategy.k"

    const-string v1, "NONE"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/k;->o:Lcom/google/android/gms/common/a/b;

    .line 63
    const-string v0, "analytics.compression_strategy.k"

    const-string v1, "NONE"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/k;->p:Lcom/google/android/gms/common/a/b;

    .line 65
    const-string v0, "analytics.max_hits_per_request.k"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/k;->q:Lcom/google/android/gms/common/a/b;

    .line 67
    const-string v0, "analytics.max_hit_length.k"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/k;->r:Lcom/google/android/gms/common/a/b;

    .line 69
    const-string v0, "analytics.max_post_length.k"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/k;->s:Lcom/google/android/gms/common/a/b;

    .line 71
    const-string v0, "analytics.fallback_responses.k"

    const-string v1, "302,404,502"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/k;->t:Lcom/google/android/gms/common/a/b;

    .line 73
    const-string v0, "analytics.batch_retry_interval.seconds.k"

    const/16 v1, 0xe10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/k;->u:Lcom/google/android/gms/common/a/b;

    .line 89
    const-string v0, "analytics.dispatch_monitoring"

    invoke-static {v0, v4}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/k;->v:Lcom/google/android/gms/common/a/b;

    .line 91
    const-string v0, "analytics.service_monitor_interval"

    const-wide/32 v2, 0x5265c00

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/k;->w:Lcom/google/android/gms/common/a/b;

    .line 95
    const-string v0, "analytics.use_ssaid_for_admob_join"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/k;->x:Lcom/google/android/gms/common/a/b;

    .line 101
    const-string v0, "analytics.test.disable_receiver"

    invoke-static {v0, v4}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/k;->y:Lcom/google/android/gms/common/a/b;

    .line 104
    const-string v0, "analytics.test.client_path"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/k;->z:Lcom/google/android/gms/common/a/b;

    .line 106
    const-string v0, "analytics.test.client_host"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/k;->A:Lcom/google/android/gms/common/a/b;

    .line 108
    const-string v0, "analytics.test.debug"

    invoke-static {v0, v4}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Z)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/internal/k;->B:Lcom/google/android/gms/common/a/b;

    return-void
.end method
