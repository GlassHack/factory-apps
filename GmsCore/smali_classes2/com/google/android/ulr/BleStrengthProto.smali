.class public final Lcom/google/android/ulr/BleStrengthProto;
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
    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 30
    sput-object v0, Lcom/google/android/ulr/BleStrengthProto;->b:Ljava/util/HashMap;

    const-string v1, "id"

    const-string v2, "id"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/google/android/ulr/BleStrengthProto;->b:Ljava/util/HashMap;

    const-string v1, "mac"

    const-string v2, "mac"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->c(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/google/android/ulr/BleStrengthProto;->b:Ljava/util/HashMap;

    const-string v1, "rssiDbm"

    const-string v2, "rssiDbm"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/google/android/ulr/BleStrengthProto;->b:Ljava/util/HashMap;

    const-string v1, "txPowerDbm"

    const-string v2, "txPowerDbm"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/google/android/ulr/BleStrengthProto;->b:Ljava/util/HashMap;

    const-string v1, "type"

    const-string v2, "type"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/b;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/b;-><init>()V

    .line 51
    if-eqz p1, :cond_0

    .line 52
    const-string v0, "id"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/ulr/BleStrengthProto;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_0
    if-eqz p2, :cond_1

    .line 55
    const-string v0, "mac"

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/ulr/BleStrengthProto;->a(Ljava/lang/String;J)V

    .line 57
    :cond_1
    if-eqz p3, :cond_2

    .line 58
    const-string v0, "rssiDbm"

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/ulr/BleStrengthProto;->a(Ljava/lang/String;I)V

    .line 60
    :cond_2
    if-eqz p4, :cond_3

    .line 61
    const-string v0, "txPowerDbm"

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/ulr/BleStrengthProto;->a(Ljava/lang/String;I)V

    .line 63
    :cond_3
    if-eqz p5, :cond_4

    .line 64
    const-string v0, "type"

    invoke-virtual {p0, v0, p5}, Lcom/google/android/ulr/BleStrengthProto;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_4
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/google/android/ulr/BleStrengthProto;->b:Ljava/util/HashMap;

    return-object v0
.end method
