.class public final Lcom/google/android/gms/common/acl/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-boolean v0, p0, Lcom/google/android/gms/common/acl/b;->e:Z

    .line 67
    iput-boolean v0, p0, Lcom/google/android/gms/common/acl/b;->h:Z

    .line 68
    iput-boolean v0, p0, Lcom/google/android/gms/common/acl/b;->i:Z

    .line 69
    iput-boolean v0, p0, Lcom/google/android/gms/common/acl/b;->j:Z

    .line 70
    iput-boolean v0, p0, Lcom/google/android/gms/common/acl/b;->k:Z

    .line 71
    iput-boolean v0, p0, Lcom/google/android/gms/common/acl/b;->l:Z

    .line 72
    iput-boolean v0, p0, Lcom/google/android/gms/common/acl/b;->m:Z

    .line 73
    invoke-static {}, Lcom/google/android/gms/common/acl/ScopeData;->u()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/acl/b;->n:Ljava/util/List;

    .line 76
    iput-object p1, p0, Lcom/google/android/gms/common/acl/b;->a:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Lcom/google/android/gms/common/acl/b;->b:Ljava/lang/String;

    .line 78
    return-void
.end method
