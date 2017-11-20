.class public final Lcom/google/android/gms/common/util/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, -0x1

    sput v0, Lcom/google/android/gms/common/util/w;->b:I

    return-void
.end method

.method public static a()I
    .locals 3

    .prologue
    .line 92
    invoke-static {}, Lcom/google/android/gms/common/util/w;->g()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 93
    const-string v1, "version_code"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static a(I)V
    .locals 2

    .prologue
    .line 86
    invoke-static {}, Lcom/google/android/gms/common/util/w;->g()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 87
    const-string v1, "version_code"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 88
    invoke-static {v0}, Lcom/android/a/c;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 89
    return-void
.end method

.method public static b()J
    .locals 2

    .prologue
    .line 104
    sget-object v0, Lcom/google/android/gms/common/util/w;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/common/app/GmsApplication;->b()Lcom/google/android/gms/common/app/GmsApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/e;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/w;->a:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/google/android/gms/common/util/w;->a:Ljava/lang/String;

    .line 105
    invoke-static {v0}, Lcom/google/android/gms/common/util/h;->a(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static c()I
    .locals 1

    .prologue
    .line 112
    invoke-static {}, Lcom/google/android/gms/common/util/w;->f()I

    move-result v0

    .line 113
    invoke-static {v0}, Lcom/google/android/gms/common/util/h;->b(I)I

    move-result v0

    .line 117
    add-int/lit8 v0, v0, 0x5

    return v0
.end method

.method public static d()I
    .locals 1

    .prologue
    .line 125
    invoke-static {}, Lcom/google/android/gms/common/util/w;->f()I

    move-result v0

    .line 126
    invoke-static {v0}, Lcom/google/android/gms/common/util/h;->c(I)I

    move-result v0

    return v0
.end method

.method public static e()I
    .locals 1

    .prologue
    .line 134
    invoke-static {}, Lcom/google/android/gms/common/util/w;->f()I

    move-result v0

    .line 135
    invoke-static {v0}, Lcom/google/android/gms/common/util/h;->d(I)I

    move-result v0

    return v0
.end method

.method private static f()I
    .locals 2

    .prologue
    .line 79
    sget v0, Lcom/google/android/gms/common/util/w;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 80
    invoke-static {}, Lcom/google/android/gms/common/app/GmsApplication;->b()Lcom/google/android/gms/common/app/GmsApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/e;->c(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/google/android/gms/common/util/w;->b:I

    .line 82
    :cond_0
    sget v0, Lcom/google/android/gms/common/util/w;->b:I

    return v0
.end method

.method private static g()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 97
    invoke-static {}, Lcom/google/android/gms/common/app/GmsApplication;->b()Lcom/google/android/gms/common/app/GmsApplication;

    move-result-object v0

    const-string v1, "init.initialized_version"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/app/GmsApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
