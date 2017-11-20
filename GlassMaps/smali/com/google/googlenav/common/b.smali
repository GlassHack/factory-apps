.class public final Lcom/google/googlenav/common/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static d:Lcom/google/googlenav/common/b;

.field private static e:Ljava/lang/Thread;


# instance fields
.field protected a:Lcom/google/googlenav/common/io/i;

.field protected b:Lcom/google/googlenav/common/io/PersistentStore;

.field protected c:Landroid/content/Context;

.field private volatile f:Z

.field private final g:Lcom/google/googlenav/common/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/common/b;->f:Z

    .line 138
    new-instance v0, Lcom/google/googlenav/common/a/a;

    invoke-direct {v0}, Lcom/google/googlenav/common/a/a;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/common/b;->g:Lcom/google/googlenav/common/a;

    .line 99
    invoke-static {}, Lcom/google/googlenav/common/e/i;->a()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/common/b;->c:Landroid/content/Context;

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/common/b;->f:Z

    .line 138
    new-instance v0, Lcom/google/googlenav/common/a/a;

    invoke-direct {v0}, Lcom/google/googlenav/common/a/a;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/common/b;->g:Lcom/google/googlenav/common/a;

    .line 107
    iput-object p1, p0, Lcom/google/googlenav/common/b;->c:Landroid/content/Context;

    .line 108
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/common/b;->e:Ljava/lang/Thread;

    .line 110
    invoke-static {p0}, Lcom/google/googlenav/common/b;->a(Lcom/google/googlenav/common/b;)V

    .line 112
    invoke-direct {p0}, Lcom/google/googlenav/common/b;->h()V

    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/googlenav/common/b;->a(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public static a()Lcom/google/googlenav/common/b;
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/google/googlenav/common/b;->d:Lcom/google/googlenav/common/b;

    return-object v0
.end method

.method public static a(Lcom/google/googlenav/common/b;)V
    .locals 0

    .prologue
    .line 124
    sput-object p0, Lcom/google/googlenav/common/b;->d:Lcom/google/googlenav/common/b;

    .line 125
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/googlenav/common/b;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Lcom/google/googlenav/common/io/j;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/j;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/common/b;->b:Lcom/google/googlenav/common/io/PersistentStore;

    .line 159
    :goto_0
    new-instance v0, Lcom/google/googlenav/common/io/a/b;

    iget-object v1, p0, Lcom/google/googlenav/common/b;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/googlenav/common/b;->a:Lcom/google/googlenav/common/io/i;

    .line 160
    return-void

    .line 154
    :cond_0
    if-eqz p1, :cond_1

    .line 155
    new-instance v0, Lcom/google/googlenav/common/io/a/a;

    invoke-direct {v0, p1}, Lcom/google/googlenav/common/io/a/a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/googlenav/common/b;->b:Lcom/google/googlenav/common/io/PersistentStore;

    goto :goto_0

    .line 157
    :cond_1
    new-instance v0, Lcom/google/googlenav/common/io/a/e;

    iget-object v1, p0, Lcom/google/googlenav/common/b;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/a/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/googlenav/common/b;->b:Lcom/google/googlenav/common/io/PersistentStore;

    goto :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    const-string v0, "OEM"

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    const-string v0, "6.2.0.0"

    return-object v0
.end method

.method public static g()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v4, 0x5f

    const/16 v3, 0x2d

    .line 310
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isGlass1()Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    const-string v0, "android:Google-glass_1-Glass 1"

    .line 320
    :goto_0
    return-object v0

    .line 314
    :cond_0
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 315
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 316
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 319
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 320
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xa

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "android:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private h()V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/google/googlenav/common/b;->i()V

    .line 143
    return-void
.end method

.method private i()V
    .locals 1

    .prologue
    .line 176
    new-instance v0, Lcom/google/googlenav/common/c;

    invoke-direct {v0, p0}, Lcom/google/googlenav/common/c;-><init>(Lcom/google/googlenav/common/b;)V

    invoke-static {v0}, Lcom/google/googlenav/common/io/g;->a(Lcom/google/googlenav/common/io/h;)V

    .line 182
    return-void
.end method


# virtual methods
.method public final d()Lcom/google/googlenav/common/io/i;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/googlenav/common/b;->a:Lcom/google/googlenav/common/io/i;

    return-object v0
.end method

.method public final e()Lcom/google/googlenav/common/io/PersistentStore;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/googlenav/common/b;->b:Lcom/google/googlenav/common/io/PersistentStore;

    return-object v0
.end method

.method public final f()Lcom/google/googlenav/common/a;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/googlenav/common/b;->g:Lcom/google/googlenav/common/a;

    return-object v0
.end method
