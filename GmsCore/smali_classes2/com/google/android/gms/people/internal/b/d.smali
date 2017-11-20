.class final Lcom/google/android/gms/people/internal/b/d;
.super Lcom/google/android/gms/people/m;
.source "SourceFile"


# instance fields
.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/google/android/gms/people/internal/b/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/people/internal/b/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/gms/people/internal/b/d;->f:Lcom/google/android/gms/people/internal/b/c;

    iput-object p2, p0, Lcom/google/android/gms/people/internal/b/d;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/people/internal/b/d;->e:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/people/m;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/aa;
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/google/android/gms/people/internal/b/e;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/people/internal/b/e;-><init>(Lcom/google/android/gms/people/internal/b/d;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method protected final bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 72
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/people/internal/l;

    iget-object v4, p0, Lcom/google/android/gms/people/internal/b/d;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/people/internal/b/d;->e:Ljava/lang/String;

    move-object v1, p0

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/people/internal/l;->a(Lcom/google/android/gms/common/api/i;ZZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
