.class public final Lcom/google/android/ulr/ApiRate;
.super Lcom/google/android/gms/common/server/response/b;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/util/RetainForClient;
.end annotation


# static fields
.field private static final b:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 36
    sput-object v0, Lcom/google/android/ulr/ApiRate;->b:Ljava/util/HashMap;

    const-string v1, "description"

    const-string v2, "description"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/google/android/ulr/ApiRate;->b:Ljava/util/HashMap;

    const-string v1, "samplePeriodMs"

    const-string v2, "samplePeriodMs"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->c(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/google/android/ulr/ApiRate;->b:Ljava/util/HashMap;

    const-string v1, "sampleReason"

    const-string v2, "sampleReason"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/google/android/ulr/ApiRate;->b:Ljava/util/HashMap;

    const-string v1, "sampleSource"

    const-string v2, "sampleSource"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/google/android/ulr/ApiRate;->b:Ljava/util/HashMap;

    const-string v1, "timestampMs"

    const-string v2, "timestampMs"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->c(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/google/android/ulr/ApiRate;->b:Ljava/util/HashMap;

    const-string v1, "uploadPeriodMs"

    const-string v2, "uploadPeriodMs"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->c(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/google/android/ulr/ApiRate;->b:Ljava/util/HashMap;

    const-string v1, "uploadReason"

    const-string v2, "uploadReason"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/google/android/ulr/ApiRate;->b:Ljava/util/HashMap;

    const-string v1, "uploadSource"

    const-string v2, "uploadSource"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/b;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/b;-><init>()V

    .line 63
    if-eqz p1, :cond_0

    .line 64
    const-string v0, "description"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/ulr/ApiRate;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_0
    if-eqz p2, :cond_1

    .line 67
    const-string v0, "samplePeriodMs"

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/ulr/ApiRate;->a(Ljava/lang/String;J)V

    .line 69
    :cond_1
    if-eqz p3, :cond_2

    .line 70
    const-string v0, "sampleReason"

    invoke-virtual {p0, v0, p3}, Lcom/google/android/ulr/ApiRate;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_2
    if-eqz p4, :cond_3

    .line 73
    const-string v0, "sampleSource"

    invoke-virtual {p0, v0, p4}, Lcom/google/android/ulr/ApiRate;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_3
    if-eqz p5, :cond_4

    .line 76
    const-string v0, "timestampMs"

    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/ulr/ApiRate;->a(Ljava/lang/String;J)V

    .line 78
    :cond_4
    if-eqz p6, :cond_5

    .line 79
    const-string v0, "uploadPeriodMs"

    invoke-virtual {p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/ulr/ApiRate;->a(Ljava/lang/String;J)V

    .line 81
    :cond_5
    if-eqz p7, :cond_6

    .line 82
    const-string v0, "uploadReason"

    invoke-virtual {p0, v0, p7}, Lcom/google/android/ulr/ApiRate;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_6
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/google/android/ulr/ApiRate;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method public final b()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/b;->a:Ljava/util/HashMap;

    const-string v1, "samplePeriodMs"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public final c()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/b;->a:Ljava/util/HashMap;

    const-string v1, "timestampMs"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method
