.class final Lcom/google/android/location/fused/a/d;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/fused/a/c;


# direct methods
.method constructor <init>(Lcom/google/android/location/fused/a/c;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/android/location/fused/a/d;->a:Lcom/google/android/location/fused/a/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/location/fused/a/d;->a:Lcom/google/android/location/fused/a/c;

    iget-object v0, v0, Lcom/google/android/location/fused/a/c;->b:Lcom/google/android/location/fused/service/a;

    iget-object v1, p0, Lcom/google/android/location/fused/a/d;->a:Lcom/google/android/location/fused/a/c;

    iget v1, v1, Lcom/google/android/location/fused/a/c;->d:I

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/location/fused/service/a;->b(I)V

    .line 76
    iget-object v0, p0, Lcom/google/android/location/fused/a/d;->a:Lcom/google/android/location/fused/a/c;

    iget-object v1, p0, Lcom/google/android/location/fused/a/d;->a:Lcom/google/android/location/fused/a/c;

    iget-object v1, v1, Lcom/google/android/location/fused/a/c;->c:Lcom/google/android/gms/common/util/i;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/i;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/location/fused/a/c;->e:J

    .line 77
    iget-object v0, p0, Lcom/google/android/location/fused/a/d;->a:Lcom/google/android/location/fused/a/c;

    invoke-virtual {v0}, Lcom/google/android/location/fused/a/c;->d()V

    .line 78
    return-void
.end method
