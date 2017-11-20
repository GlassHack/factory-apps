.class public Lcom/google/android/location/o/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/android/location/o/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/google/android/location/o/g;

    invoke-direct {v0}, Lcom/google/android/location/o/g;-><init>()V

    sput-object v0, Lcom/google/android/location/o/g;->a:Lcom/google/android/location/o/g;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/location/o/g;
    .locals 1

    .prologue
    .line 20
    const/16 v0, 0x13

    invoke-static {v0}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/google/android/location/o/h;

    invoke-direct {v0, p0}, Lcom/google/android/location/o/h;-><init>(Landroid/content/Context;)V

    .line 26
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/location/o/g;->a:Lcom/google/android/location/o/g;

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method public b(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public c(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    return v0
.end method
