.class final Lcom/google/android/location/fused/b/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/location/l;


# instance fields
.field final a:Lcom/google/android/location/o/u;

.field b:Z

.field final synthetic c:Lcom/google/android/location/fused/b/e;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/location/fused/b/e;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 114
    iput-object p1, p0, Lcom/google/android/location/fused/b/f;->c:Lcom/google/android/location/fused/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p2, p0, Lcom/google/android/location/fused/b/f;->d:Ljava/lang/String;

    .line 116
    new-instance v0, Lcom/google/android/location/o/u;

    iget-object v1, p1, Lcom/google/android/location/fused/b/e;->b:Lcom/google/android/location/o/n;

    invoke-static {}, Lcom/google/android/location/fused/ah;->a()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/location/o/u;-><init>(Lcom/google/android/location/o/n;Lcom/google/android/gms/location/l;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/location/fused/b/f;->a:Lcom/google/android/location/o/u;

    .line 118
    return-void
.end method


# virtual methods
.method public final a(Landroid/location/Location;)V
    .locals 4

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/location/fused/b/f;->c:Lcom/google/android/location/fused/b/e;

    iget-object v0, v0, Lcom/google/android/location/fused/b/e;->a:Lcom/google/android/location/fused/b/a;

    iget-object v1, p0, Lcom/google/android/location/fused/b/f;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/location/fused/b/b;->a(Landroid/location/Location;)Lcom/google/android/gms/wearable/m;

    move-result-object v2

    const-string v3, "com.google.android.location.fused.ACTION_LOCATION"

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/location/fused/b/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/wearable/m;)Lcom/google/android/gms/wearable/q;

    .line 127
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 151
    instance-of v0, p1, Lcom/google/android/location/fused/b/f;

    if-nez v0, :cond_0

    .line 152
    const/4 v0, 0x0

    .line 155
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/location/fused/b/f;->d:Ljava/lang/String;

    check-cast p1, Lcom/google/android/location/fused/b/f;

    iget-object v1, p1, Lcom/google/android/location/fused/b/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/location/fused/b/f;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
