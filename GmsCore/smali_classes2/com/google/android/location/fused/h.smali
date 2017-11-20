.class final Lcom/google/android/location/fused/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/b/aj;


# instance fields
.field final synthetic a:Lcom/google/android/location/fused/g;


# direct methods
.method constructor <init>(Lcom/google/android/location/fused/g;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/google/android/location/fused/h;->a:Lcom/google/android/location/fused/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 239
    check-cast p1, Landroid/os/Bundle;

    check-cast p2, Landroid/os/Bundle;

    iget-object v0, p0, Lcom/google/android/location/fused/h;->a:Lcom/google/android/location/fused/g;

    invoke-static {p1}, Lcom/google/android/location/fused/g;->a(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/fused/h;->a:Lcom/google/android/location/fused/g;

    invoke-static {p2}, Lcom/google/android/location/fused/g;->a(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
