.class public final Lcom/google/android/ulr/WifiStrengthProto;
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
    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 28
    sput-object v0, Lcom/google/android/ulr/WifiStrengthProto;->b:Ljava/util/HashMap;

    const-string v1, "isConnected"

    const-string v2, "isConnected"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->f(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/google/android/ulr/WifiStrengthProto;->b:Ljava/util/HashMap;

    const-string v1, "mac"

    const-string v2, "mac"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->c(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/google/android/ulr/WifiStrengthProto;->b:Ljava/util/HashMap;

    const-string v1, "strength"

    const-string v2, "strength"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/google/android/ulr/WifiStrengthProto;->b:Ljava/util/HashMap;

    const-string v1, "wifiAuthType"

    const-string v2, "wifiAuthType"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->g(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/b;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/b;-><init>()V

    .line 47
    if-eqz p1, :cond_0

    .line 48
    const-string v0, "isConnected"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/ulr/WifiStrengthProto;->a(Ljava/lang/String;Z)V

    .line 50
    :cond_0
    if-eqz p2, :cond_1

    .line 51
    const-string v0, "mac"

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/ulr/WifiStrengthProto;->a(Ljava/lang/String;J)V

    .line 53
    :cond_1
    if-eqz p3, :cond_2

    .line 54
    const-string v0, "strength"

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/ulr/WifiStrengthProto;->a(Ljava/lang/String;I)V

    .line 56
    :cond_2
    if-eqz p4, :cond_3

    .line 57
    const-string v0, "wifiAuthType"

    invoke-virtual {p0, v0, p4}, Lcom/google/android/ulr/WifiStrengthProto;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_3
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/android/ulr/WifiStrengthProto;->b:Ljava/util/HashMap;

    return-object v0
.end method
