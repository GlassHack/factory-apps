.class public Lcom/google/android/location/fused/service/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static volatile a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/location/fused/service/a;->a:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/os/Looper;)Lcom/google/android/location/fused/service/a;
    .locals 1

    .prologue
    .line 20
    const/16 v0, 0x13

    invoke-static {v0}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    new-instance v0, Lcom/google/android/location/fused/service/c;

    invoke-direct {v0, p0}, Lcom/google/android/location/fused/service/c;-><init>(Landroid/os/Looper;)V

    .line 23
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/location/fused/service/a;

    invoke-direct {v0}, Lcom/google/android/location/fused/service/a;-><init>()V

    goto :goto_0
.end method

.method public static a(Z)V
    .locals 0

    .prologue
    .line 32
    sput-boolean p0, Lcom/google/android/location/fused/service/a;->a:Z

    .line 33
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public a(IJDII)V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public a(Lcom/google/android/location/fused/service/b;)V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 146
    return-void
.end method

.method public b(IJDII)V
    .locals 0

    .prologue
    .line 119
    return-void
.end method
