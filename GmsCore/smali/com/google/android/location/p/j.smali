.class public Lcom/google/android/location/p/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/android/location/p/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/google/android/location/p/j;

    invoke-direct {v0}, Lcom/google/android/location/p/j;-><init>()V

    sput-object v0, Lcom/google/android/location/p/j;->a:Lcom/google/android/location/p/j;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/location/p/j;
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Lcom/google/android/location/j/a;->f:Z

    if-eqz v0, :cond_0

    .line 26
    new-instance v0, Lcom/google/android/location/p/k;

    invoke-direct {v0}, Lcom/google/android/location/p/k;-><init>()V

    .line 31
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/location/p/j;->a:Lcom/google/android/location/p/j;

    goto :goto_0
.end method

.method public static a(Landroid/content/Intent;Ljava/lang/String;)Lcom/google/android/location/p/j;
    .locals 1

    .prologue
    .line 51
    sget-boolean v0, Lcom/google/android/location/j/a;->f:Z

    if-eqz v0, :cond_0

    .line 52
    invoke-static {p0, p1}, Lcom/google/android/location/p/k;->b(Landroid/content/Intent;Ljava/lang/String;)Lcom/google/android/location/p/k;

    move-result-object v0

    .line 55
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/os/Parcelable;)Lcom/google/android/location/p/j;
    .locals 1

    .prologue
    .line 39
    if-nez p0, :cond_0

    .line 40
    const/4 v0, 0x0

    .line 46
    :goto_0
    return-object v0

    .line 43
    :cond_0
    sget-boolean v0, Lcom/google/android/location/j/a;->f:Z

    if-eqz v0, :cond_1

    .line 44
    new-instance v0, Lcom/google/android/location/p/k;

    invoke-direct {v0, p0}, Lcom/google/android/location/p/k;-><init>(Landroid/os/Parcelable;)V

    goto :goto_0

    .line 46
    :cond_1
    sget-object v0, Lcom/google/android/location/p/j;->a:Lcom/google/android/location/p/j;

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/net/wifi/WifiManager$WifiLock;)V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public a(Landroid/os/PowerManager$WakeLock;)V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public a(Lcom/google/android/location/p/j;)V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public b()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1

    .prologue
    .line 94
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 99
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x1

    return v0
.end method
