.class public final Lcom/google/android/gms/auth/firstparty/proximity/data/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lcom/google/android/gms/auth/firstparty/proximity/data/PermitAccess;

.field public e:Ljava/util/Map;

.field f:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/c;->e:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/c;->f:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/auth/firstparty/proximity/data/Permit;-><init>(Lcom/google/android/gms/auth/firstparty/proximity/data/c;B)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/proximity/data/c;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/gms/auth/firstparty/proximity/data/c;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    return-object p0
.end method
