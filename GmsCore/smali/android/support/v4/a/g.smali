.class public Landroid/support/v4/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Landroid/support/v4/a/h;

.field c:Landroid/content/Context;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean v1, p0, Landroid/support/v4/a/g;->d:Z

    .line 39
    iput-boolean v1, p0, Landroid/support/v4/a/g;->e:Z

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/a/g;->f:Z

    .line 41
    iput-boolean v1, p0, Landroid/support/v4/a/g;->g:Z

    .line 42
    iput-boolean v1, p0, Landroid/support/v4/a/g;->h:Z

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/a/g;->c:Landroid/content/Context;

    .line 93
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 207
    return-void
.end method

.method public final a(Landroid/support/v4/a/h;)V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Landroid/support/v4/a/g;->b:Landroid/support/v4/a/h;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No listener register"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    iget-object v0, p0, Landroid/support/v4/a/g;->b:Landroid/support/v4/a/h;

    if-eq v0, p1, :cond_1

    .line 147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempting to unregister the wrong listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/a/g;->b:Landroid/support/v4/a/h;

    .line 150
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Landroid/support/v4/a/g;->b:Landroid/support/v4/a/h;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Landroid/support/v4/a/g;->b:Landroid/support/v4/a/h;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/a/h;->a(Landroid/support/v4/a/g;Ljava/lang/Object;)V

    .line 106
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/a/g;->d:Z

    .line 244
    invoke-virtual {p0}, Landroid/support/v4/a/g;->c()V

    .line 245
    return-void
.end method

.method protected c()V
    .locals 0

    .prologue
    .line 254
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 291
    invoke-virtual {p0}, Landroid/support/v4/a/g;->e()V

    .line 292
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/a/g;->f:Z

    .line 293
    iput-boolean v1, p0, Landroid/support/v4/a/g;->d:Z

    .line 294
    iput-boolean v1, p0, Landroid/support/v4/a/g;->e:Z

    .line 295
    iput-boolean v1, p0, Landroid/support/v4/a/g;->g:Z

    .line 296
    iput-boolean v1, p0, Landroid/support/v4/a/g;->h:Z

    .line 297
    return-void
.end method

.method protected e()V
    .locals 0

    .prologue
    .line 306
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 377
    invoke-static {p0, v0}, Landroid/support/v4/f/e;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 378
    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    iget v1, p0, Landroid/support/v4/a/g;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 380
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
