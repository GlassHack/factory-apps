.class final Lcom/google/android/location/p/k;
.super Lcom/google/android/location/p/j;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/reflect/Field;


# instance fields
.field private final a:Landroid/os/WorkSource;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    :try_start_0
    const-class v0, Landroid/os/WorkSource;

    const-string v1, "mNames"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 27
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    sput-object v0, Lcom/google/android/location/p/k;->b:Ljava/lang/reflect/Field;

    .line 33
    return-void

    .line 29
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/android/location/p/j;-><init>()V

    .line 53
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/p/k;->a:Landroid/os/WorkSource;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/android/location/p/j;-><init>()V

    .line 45
    check-cast p1, Landroid/os/WorkSource;

    iput-object p1, p0, Lcom/google/android/location/p/k;->a:Landroid/os/WorkSource;

    .line 46
    return-void
.end method

.method private constructor <init>(Landroid/os/WorkSource;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/android/location/p/j;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/google/android/location/p/k;->a:Landroid/os/WorkSource;

    .line 50
    return-void
.end method

.method public static b(Landroid/content/Intent;Ljava/lang/String;)Lcom/google/android/location/p/k;
    .locals 2

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    .line 37
    if-eqz v0, :cond_0

    .line 38
    new-instance v1, Lcom/google/android/location/p/k;

    invoke-direct {v1, v0}, Lcom/google/android/location/p/k;-><init>(Landroid/os/WorkSource;)V

    move-object v0, v1

    .line 41
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/net/wifi/WifiManager$WifiLock;)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/location/p/k;->a:Landroid/os/WorkSource;

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiManager$WifiLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 69
    return-void
.end method

.method public final a(Landroid/os/PowerManager$WakeLock;)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/location/p/k;->a:Landroid/os/WorkSource;

    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 64
    return-void
.end method

.method public final a(Lcom/google/android/location/p/j;)V
    .locals 2

    .prologue
    .line 58
    iget-object v1, p0, Lcom/google/android/location/p/k;->a:Landroid/os/WorkSource;

    invoke-virtual {p1}, Lcom/google/android/location/p/j;->b()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    invoke-virtual {v1, v0}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    .line 59
    return-void
.end method

.method public final b()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/location/p/k;->a:Landroid/os/WorkSource;

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 5

    .prologue
    .line 79
    const/4 v2, 0x0

    .line 82
    :try_start_0
    sget-object v0, Lcom/google/android/location/p/k;->b:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/location/p/k;->a:Landroid/os/WorkSource;

    if-eqz v0, :cond_3

    .line 85
    sget-object v0, Lcom/google/android/location/p/k;->b:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/google/android/location/p/k;->a:Landroid/os/WorkSource;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 87
    instance-of v1, v0, [Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 88
    check-cast v0, [Ljava/lang/String;

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    array-length v3, v0

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :try_start_1
    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 92
    if-eqz v4, :cond_0

    .line 93
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 91
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    move-object v0, v2

    .line 102
    :goto_2
    if-nez v0, :cond_1

    .line 103
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 106
    :cond_1
    return-object v0

    :catch_1
    move-exception v0

    move-object v2, v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_2

    :cond_3
    move-object v0, v2

    goto :goto_2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 111
    instance-of v1, p1, Lcom/google/android/location/p/k;

    if-nez v1, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/location/p/k;->a:Landroid/os/WorkSource;

    check-cast p1, Lcom/google/android/location/p/k;

    iget-object v2, p1, Lcom/google/android/location/p/k;->a:Landroid/os/WorkSource;

    invoke-virtual {v1, v2}, Landroid/os/WorkSource;->diff(Landroid/os/WorkSource;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/location/p/k;->a:Landroid/os/WorkSource;

    invoke-virtual {v0}, Landroid/os/WorkSource;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/location/p/k;->a:Landroid/os/WorkSource;

    invoke-virtual {v0}, Landroid/os/WorkSource;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
