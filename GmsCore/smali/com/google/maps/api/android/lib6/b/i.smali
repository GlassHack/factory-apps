.class public final Lcom/google/maps/api/android/lib6/b/i;
.super Ljava/lang/Object;


# static fields
.field private static synthetic l:Z


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/Boolean;

.field private i:Ljava/lang/Boolean;

.field private j:I

.field private k:Lcom/google/maps/api/android/lib6/b/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/maps/api/android/lib6/b/h;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/maps/api/android/lib6/b/i;->l:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/b/i;->d:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/b/i;->j:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/maps/api/android/lib6/b/i;
    .locals 1

    sget-boolean v0, Lcom/google/maps/api/android/lib6/b/i;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/i;->k:Lcom/google/maps/api/android/lib6/b/h;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/b/i;->d:Z

    return-object p0
.end method

.method public final a(I)Lcom/google/maps/api/android/lib6/b/i;
    .locals 1

    sget-boolean v0, Lcom/google/maps/api/android/lib6/b/i;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/i;->k:Lcom/google/maps/api/android/lib6/b/h;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iput p1, p0, Lcom/google/maps/api/android/lib6/b/i;->e:I

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/maps/api/android/lib6/b/i;
    .locals 1

    sget-boolean v0, Lcom/google/maps/api/android/lib6/b/i;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/i;->k:Lcom/google/maps/api/android/lib6/b/h;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/maps/api/android/lib6/b/i;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final a(Z)Lcom/google/maps/api/android/lib6/b/i;
    .locals 1

    sget-boolean v0, Lcom/google/maps/api/android/lib6/b/i;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/i;->k:Lcom/google/maps/api/android/lib6/b/h;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/b/i;->i:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final b()Lcom/google/maps/api/android/lib6/b/i;
    .locals 1

    sget-boolean v0, Lcom/google/maps/api/android/lib6/b/i;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/i;->k:Lcom/google/maps/api/android/lib6/b/h;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/b/i;->h:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/maps/api/android/lib6/b/i;
    .locals 1

    sget-boolean v0, Lcom/google/maps/api/android/lib6/b/i;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/i;->k:Lcom/google/maps/api/android/lib6/b/h;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/maps/api/android/lib6/b/i;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Lcom/google/maps/api/android/lib6/b/h;
    .locals 4

    sget-boolean v0, Lcom/google/maps/api/android/lib6/b/i;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/i;->k:Lcom/google/maps/api/android/lib6/b/h;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/i;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/b/i;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/b/i;->c:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/maps/api/android/lib6/b/i;->d:Z

    invoke-static {v0, v1, v2, v3}, Lcom/google/maps/api/android/lib6/b/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/maps/api/android/lib6/b/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/b/i;->k:Lcom/google/maps/api/android/lib6/b/h;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/i;->k:Lcom/google/maps/api/android/lib6/b/h;

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/b/h;->a(Lcom/google/maps/api/android/lib6/b/h;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/i;->k:Lcom/google/maps/api/android/lib6/b/h;

    const-string v1, "SYSTEM"

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/b/h;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/i;->k:Lcom/google/maps/api/android/lib6/b/h;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/b/i;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/b/h;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/i;->k:Lcom/google/maps/api/android/lib6/b/h;

    iget v1, p0, Lcom/google/maps/api/android/lib6/b/i;->e:I

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/b/h;->a(Lcom/google/maps/api/android/lib6/b/h;I)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/i;->h:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/i;->k:Lcom/google/maps/api/android/lib6/b/h;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/b/i;->h:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/b/h;->a(Lcom/google/maps/api/android/lib6/b/h;Z)V

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/i;->i:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/i;->k:Lcom/google/maps/api/android/lib6/b/h;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/b/i;->i:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/b/h;->b(Lcom/google/maps/api/android/lib6/b/h;Z)V

    :cond_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/i;->k:Lcom/google/maps/api/android/lib6/b/h;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/b/h;->e:Lcom/google/maps/api/android/lib6/b/n;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/b/i;->g:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/b/i;->g:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/b/n;->b:Lcom/google/g/a/b/b/f;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v1}, Lcom/google/g/a/b/b/f;->a(ILjava/lang/String;)Lcom/google/g/a/b/b/f;

    :cond_3
    iget v1, p0, Lcom/google/maps/api/android/lib6/b/i;->j:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    iget v1, p0, Lcom/google/maps/api/android/lib6/b/i;->j:I

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/b/n;->b:Lcom/google/g/a/b/b/f;

    const/16 v2, 0x19

    invoke-virtual {v0, v2, v1}, Lcom/google/g/a/b/b/f;->f(II)Lcom/google/g/a/b/b/f;

    :cond_4
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/i;->k:Lcom/google/maps/api/android/lib6/b/h;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Lcom/google/maps/api/android/lib6/b/i;
    .locals 1

    sget-boolean v0, Lcom/google/maps/api/android/lib6/b/i;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/i;->k:Lcom/google/maps/api/android/lib6/b/h;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/maps/api/android/lib6/b/i;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lcom/google/maps/api/android/lib6/b/i;
    .locals 1

    sget-boolean v0, Lcom/google/maps/api/android/lib6/b/i;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/b/i;->k:Lcom/google/maps/api/android/lib6/b/h;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/maps/api/android/lib6/b/i;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lcom/google/maps/api/android/lib6/b/i;
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/b/i;->g:Ljava/lang/String;

    return-object p0
.end method
