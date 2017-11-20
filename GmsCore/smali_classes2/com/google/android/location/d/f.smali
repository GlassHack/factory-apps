.class public final Lcom/google/android/location/d/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Lcom/google/android/location/d/f;


# instance fields
.field public final a:Lcom/google/android/location/d/g;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v2, -0x1

    .line 68
    new-instance v0, Lcom/google/android/location/d/f;

    sget-object v1, Lcom/google/android/location/d/g;->f:Lcom/google/android/location/d/g;

    const/4 v5, 0x0

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/d/f;-><init>(Lcom/google/android/location/d/g;IIILandroid/content/Intent;)V

    sput-object v0, Lcom/google/android/location/d/f;->f:Lcom/google/android/location/d/f;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/location/d/g;IIILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/google/android/location/d/f;->a:Lcom/google/android/location/d/g;

    .line 74
    iput p2, p0, Lcom/google/android/location/d/f;->b:I

    .line 75
    iput p3, p0, Lcom/google/android/location/d/f;->c:I

    .line 76
    iput p4, p0, Lcom/google/android/location/d/f;->d:I

    .line 77
    iput-object p5, p0, Lcom/google/android/location/d/f;->e:Landroid/content/Intent;

    .line 78
    return-void
.end method

.method public static a(Lcom/google/android/location/d/g;Landroid/content/Context;)Lcom/google/android/location/d/f;
    .locals 6

    .prologue
    .line 93
    sget-object v0, Lcom/google/android/location/d/g;->f:Lcom/google/android/location/d/g;

    if-ne p0, v0, :cond_0

    .line 94
    sget-object v0, Lcom/google/android/location/d/f;->f:Lcom/google/android/location/d/f;

    .line 114
    :goto_0
    return-object v0

    .line 96
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/google/android/location/d/g;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/location/d/g;->h:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 100
    const/16 v2, 0x80

    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 105
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 106
    if-eqz v0, :cond_2

    .line 107
    const-string v1, "minProtocolVersion"

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 108
    const-string v1, "maxProtocolVersion"

    const/high16 v3, -0x80000000

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 109
    const-string v1, "releaseVersion"

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 110
    new-instance v5, Landroid/content/Intent;

    const-string v1, "nlpServiceIntent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/google/android/location/d/g;->g:Ljava/lang/String;

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    new-instance v0, Lcom/google/android/location/d/f;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/d/f;-><init>(Lcom/google/android/location/d/g;IIILandroid/content/Intent;)V

    goto :goto_0

    .line 102
    :catch_0
    move-exception v1

    sget-boolean v1, Lcom/google/android/location/j/a;->b:Z

    if-eqz v1, :cond_1

    const-string v1, "NlpVersionInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " not found"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_1
    sget-object v0, Lcom/google/android/location/d/f;->f:Lcom/google/android/location/d/f;

    goto :goto_0

    .line 114
    :cond_2
    sget-object v0, Lcom/google/android/location/d/f;->f:Lcom/google/android/location/d/f;

    goto :goto_0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/location/d/f;->a:Lcom/google/android/location/d/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " minProtocolVersion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/location/d/f;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " maxProtocolVersion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/location/d/f;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " releaseVersion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/location/d/f;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
