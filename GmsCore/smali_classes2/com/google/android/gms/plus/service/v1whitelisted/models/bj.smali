.class public final Lcom/google/android/gms/plus/service/v1whitelisted/models/bj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientAclDetailsEntity;

.field private b:Ljava/util/List;

.field private c:Ljava/util/List;

.field private d:Ljava/util/List;

.field private e:Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedRhsComponentEntity;

.field private final f:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/bj;->f:Ljava/util/Set;

    .line 86
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/plus/service/v1whitelisted/models/bi;
    .locals 7

    .prologue
    .line 147
    new-instance v0, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientActionDataEntity;

    iget-object v1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/bj;->f:Ljava/util/Set;

    iget-object v2, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/bj;->a:Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientAclDetailsEntity;

    iget-object v3, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/bj;->b:Ljava/util/List;

    iget-object v4, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/bj;->c:Ljava/util/List;

    iget-object v5, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/bj;->d:Ljava/util/List;

    iget-object v6, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/bj;->e:Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedRhsComponentEntity;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientActionDataEntity;-><init>(Ljava/util/Set;Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientAclDetailsEntity;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientLoggedRhsComponentEntity;)V

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/plus/service/v1whitelisted/models/bf;)Lcom/google/android/gms/plus/service/v1whitelisted/models/bj;
    .locals 2

    .prologue
    .line 94
    check-cast p1, Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientAclDetailsEntity;

    iput-object p1, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/bj;->a:Lcom/google/android/gms/plus/service/v1whitelisted/models/ClientAclDetailsEntity;

    .line 95
    iget-object v0, p0, Lcom/google/android/gms/plus/service/v1whitelisted/models/bj;->f:Ljava/util/Set;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 96
    return-object p0
.end method
