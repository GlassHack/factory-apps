.class final Lcom/google/android/gms/fitness/b/c/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/fitness/b/l;


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/b/c/m;

.field private final b:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/fitness/b/c/m;Z)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/google/android/gms/fitness/b/c/o;->a:Lcom/google/android/gms/fitness/b/c/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-boolean p2, p0, Lcom/google/android/gms/fitness/b/c/o;->b:Z

    .line 156
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/fitness/b/c/m;ZB)V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/fitness/b/c/o;-><init>(Lcom/google/android/gms/fitness/b/c/m;Z)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/fitness/b/e;)Z
    .locals 2

    .prologue
    .line 160
    sget-object v0, Lcom/google/android/gms/fitness/b/h;->a:Lcom/google/android/gms/fitness/b/h;

    invoke-interface {p1}, Lcom/google/android/gms/fitness/b/e;->e()Lcom/google/android/gms/fitness/b/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/fitness/b/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/b/c/o;->a:Lcom/google/android/gms/fitness/b/c/m;

    iget-object v0, v0, Lcom/google/android/gms/fitness/b/c/m;->b:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/fitness/b/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/fitness/b/e;->a()Lcom/google/android/gms/fitness/b/b;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "com.google.android.gms"

    invoke-interface {p1}, Lcom/google/android/gms/fitness/b/e;->a()Lcom/google/android/gms/fitness/b/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/fitness/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/b/c/o;->a:Lcom/google/android/gms/fitness/b/c/m;

    iget-object v0, v0, Lcom/google/android/gms/fitness/b/c/m;->a:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/google/android/gms/fitness/b/c/o;->b:Z

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/b/c/q;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/fitness/b/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
