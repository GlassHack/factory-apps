.class final Lcom/google/android/gms/common/internal/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Lcom/google/android/gms/common/internal/r;

.field final c:Ljava/util/HashSet;

.field d:I

.field e:Z

.field f:Landroid/os/IBinder;

.field g:Landroid/content/ComponentName;

.field final synthetic h:Lcom/google/android/gms/common/internal/p;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/p;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/android/gms/common/internal/q;->h:Lcom/google/android/gms/common/internal/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p2, p0, Lcom/google/android/gms/common/internal/q;->a:Ljava/lang/String;

    .line 90
    new-instance v0, Lcom/google/android/gms/common/internal/r;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/r;-><init>(Lcom/google/android/gms/common/internal/q;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/q;->b:Lcom/google/android/gms/common/internal/r;

    .line 91
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/q;->c:Ljava/util/HashSet;

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/common/internal/q;->d:I

    .line 93
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/internal/j;)V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/gms/common/internal/q;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 97
    return-void
.end method

.method public final b(Lcom/google/android/gms/common/internal/j;)Z
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/gms/common/internal/q;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
