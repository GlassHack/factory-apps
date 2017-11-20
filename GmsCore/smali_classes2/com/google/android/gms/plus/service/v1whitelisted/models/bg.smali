.class public final Lcom/google/android/gms/plus/service/v1whitelisted/models/bg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/List;

.field public b:Ljava/util/List;

.field public final c:Ljava/util/Set;

.field private d:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/bg;->c:Ljava/util/Set;

    .line 60
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/plus/service/v1whitelisted/models/bf;
    .locals 5

    .prologue
    .line 99
    new-instance v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientAclDetailsEntity;

    iget-object v1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/bg;->c:Ljava/util/Set;

    iget-object v2, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/bg;->a:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/bg;->b:Ljava/util/List;

    iget-object v4, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/bg;->d:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientAclDetailsEntity;-><init>(Ljava/util/Set;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public final a(Ljava/util/List;)Lcom/google/android/gms/plus/service/v1whitelisted/models/bg;
    .locals 2

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/bg;->d:Ljava/util/List;

    .line 91
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/bg;->c:Ljava/util/Set;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    return-object p0
.end method
