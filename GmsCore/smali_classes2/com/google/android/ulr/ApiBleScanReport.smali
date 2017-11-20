.class public final Lcom/google/android/ulr/ApiBleScanReport;
.super Lcom/google/android/gms/common/server/response/b;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/util/RetainForClient;
.end annotation


# static fields
.field private static final b:Ljava/util/HashMap;


# instance fields
.field private final c:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 24
    sput-object v0, Lcom/google/android/ulr/ApiBleScanReport;->b:Ljava/util/HashMap;

    const-string v1, "bleScans"

    const-string v2, "bleScans"

    const-class v3, Lcom/google/android/ulr/BleStrengthProto;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/b;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/ulr/ApiBleScanReport;->c:Ljava/util/HashMap;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/b;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/ulr/ApiBleScanReport;->c:Ljava/util/HashMap;

    .line 38
    if-eqz p1, :cond_0

    .line 39
    const-string v0, "bleScans"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/ulr/ApiBleScanReport;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 41
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/android/ulr/ApiBleScanReport;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/ulr/ApiBleScanReport;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-void
.end method

.method protected final c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/ulr/ApiBleScanReport;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final getBleScans()Ljava/util/ArrayList;
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/RetainForClient;
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/ulr/ApiBleScanReport;->c:Ljava/util/HashMap;

    const-string v1, "bleScans"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method
