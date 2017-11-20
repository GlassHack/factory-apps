.class public final Lcom/google/android/gms/playlog/internal/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/g;
.implements Lcom/google/android/gms/common/h;


# instance fields
.field a:Lcom/google/android/gms/playlog/internal/i;

.field b:Z

.field private final c:Lcom/google/android/gms/playlog/c;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/playlog/c;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/android/gms/playlog/internal/g;->c:Lcom/google/android/gms/playlog/c;

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/playlog/internal/g;->a:Lcom/google/android/gms/playlog/internal/i;

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/playlog/internal/g;->b:Z

    .line 36
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/g;->a:Lcom/google/android/gms/playlog/internal/i;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/playlog/internal/i;->a(Z)V

    .line 43
    iget-boolean v0, p0, Lcom/google/android/gms/playlog/internal/g;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/g;->c:Lcom/google/android/gms/playlog/c;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/g;->c:Lcom/google/android/gms/playlog/c;

    invoke-interface {v0}, Lcom/google/android/gms/playlog/c;->c()V

    .line 46
    :cond_0
    iput-boolean v1, p0, Lcom/google/android/gms/playlog/internal/g;->b:Z

    .line 47
    return-void
.end method

.method public final a(Lcom/google/android/gms/common/b;)V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/g;->a:Lcom/google/android/gms/playlog/internal/i;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/playlog/internal/i;->a(Z)V

    .line 60
    iget-boolean v0, p0, Lcom/google/android/gms/playlog/internal/g;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/g;->c:Lcom/google/android/gms/playlog/c;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p1}, Lcom/google/android/gms/common/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/g;->c:Lcom/google/android/gms/playlog/c;

    invoke-virtual {p1}, Lcom/google/android/gms/common/b;->d()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/playlog/c;->a(Landroid/app/PendingIntent;)V

    .line 67
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/playlog/internal/g;->b:Z

    .line 68
    return-void

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/g;->c:Lcom/google/android/gms/playlog/c;

    invoke-interface {v0}, Lcom/google/android/gms/playlog/c;->d()V

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/g;->a:Lcom/google/android/gms/playlog/internal/i;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/playlog/internal/i;->a(Z)V

    .line 55
    return-void
.end method
