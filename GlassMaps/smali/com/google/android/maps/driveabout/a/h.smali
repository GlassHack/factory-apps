.class final Lcom/google/android/maps/driveabout/a/h;
.super Lcom/google/android/maps/driveabout/a/a;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/maps/driveabout/a/a;

.field private b:Ljava/lang/String;

.field private c:Ljava/io/File;

.field private final d:Landroid/os/Handler;

.field private e:I

.field private final f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/a/a;-><init>()V

    .line 221
    iput-object p1, p0, Lcom/google/android/maps/driveabout/a/h;->f:Landroid/content/Context;

    .line 222
    iput-object p2, p0, Lcom/google/android/maps/driveabout/a/h;->b:Ljava/lang/String;

    .line 223
    iput-object p3, p0, Lcom/google/android/maps/driveabout/a/h;->c:Ljava/io/File;

    .line 224
    iput-object p4, p0, Lcom/google/android/maps/driveabout/a/h;->d:Landroid/os/Handler;

    .line 225
    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/a/h;Lcom/google/android/maps/driveabout/a/a;)Lcom/google/android/maps/driveabout/a/a;
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/google/android/maps/driveabout/a/h;->a:Lcom/google/android/maps/driveabout/a/a;

    return-object p1
.end method


# virtual methods
.method public final a(Lcom/google/android/maps/driveabout/a/b;)V
    .locals 3

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/h;->c:Ljava/io/File;

    if-nez v0, :cond_0

    .line 232
    const-string v0, "AlertGenerator"

    const-string v1, "mFile=null"

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-interface {p1, p0}, Lcom/google/android/maps/driveabout/a/b;->a(Lcom/google/android/maps/driveabout/a/a;)V

    .line 250
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/h;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/a/h;->c:Ljava/io/File;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/a/h;->d:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/google/android/maps/driveabout/a/an;->a(Landroid/content/Context;Ljava/io/File;Landroid/os/Handler;)Lcom/google/android/maps/driveabout/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/a/h;->a:Lcom/google/android/maps/driveabout/a/a;

    .line 238
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/h;->a:Lcom/google/android/maps/driveabout/a/a;

    if-nez v0, :cond_1

    .line 239
    invoke-interface {p1, p0}, Lcom/google/android/maps/driveabout/a/b;->a(Lcom/google/android/maps/driveabout/a/a;)V

    .line 249
    :goto_1
    iget v0, p0, Lcom/google/android/maps/driveabout/a/h;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/a/h;->e:I

    goto :goto_0

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/h;->a:Lcom/google/android/maps/driveabout/a/a;

    new-instance v1, Lcom/google/android/maps/driveabout/a/i;

    invoke-direct {v1, p0, p1}, Lcom/google/android/maps/driveabout/a/i;-><init>(Lcom/google/android/maps/driveabout/a/h;Lcom/google/android/maps/driveabout/a/b;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/a/a;->a(Lcom/google/android/maps/driveabout/a/b;)V

    goto :goto_1
.end method

.method public final b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 277
    iput-object v0, p0, Lcom/google/android/maps/driveabout/a/h;->c:Ljava/io/File;

    .line 278
    iput-object v0, p0, Lcom/google/android/maps/driveabout/a/h;->b:Ljava/lang/String;

    .line 279
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/android/maps/driveabout/a/h;->b:Ljava/lang/String;

    return-object v0
.end method
