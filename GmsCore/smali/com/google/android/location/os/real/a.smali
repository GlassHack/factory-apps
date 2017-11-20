.class public final Lcom/google/android/location/os/real/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/p/a/b;


# instance fields
.field private final a:Lcom/google/android/location/os/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/os/real/a;->a:Lcom/google/android/location/os/e;

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/google/android/location/os/e;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/android/location/os/real/a;->a:Lcom/google/android/location/os/e;

    .line 34
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 73
    invoke-static {p3, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/google/android/location/os/real/a;->a:Lcom/google/android/location/os/e;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/google/android/location/os/real/a;->a:Lcom/google/android/location/os/e;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/location/os/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/location/os/real/a;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 39
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 58
    sget-boolean v0, Lcom/google/android/location/j/a;->e:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/os/real/a;->a:Lcom/google/android/location/os/e;

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/google/android/location/os/real/a;->a:Lcom/google/android/location/os/e;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/location/os/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;I)Z
    .locals 1

    .prologue
    .line 81
    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x6

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/location/os/real/a;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 54
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/location/os/real/a;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 44
    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x5

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/location/os/real/a;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 49
    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 66
    invoke-static {p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcom/google/android/location/os/real/a;->a:Lcom/google/android/location/os/e;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/google/android/location/os/real/a;->a:Lcom/google/android/location/os/e;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/location/os/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_0
    return-void
.end method
