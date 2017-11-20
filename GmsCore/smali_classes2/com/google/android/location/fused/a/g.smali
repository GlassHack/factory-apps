.class final Lcom/google/android/location/fused/a/g;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/fused/a/f;


# direct methods
.method constructor <init>(Lcom/google/android/location/fused/a/f;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/android/location/fused/a/g;->a:Lcom/google/android/location/fused/a/f;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/location/fused/a/g;->a:Lcom/google/android/location/fused/a/f;

    invoke-virtual {v0}, Lcom/google/android/location/fused/a/f;->c()V

    .line 92
    return-void
.end method
