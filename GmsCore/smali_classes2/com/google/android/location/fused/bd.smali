.class public final Lcom/google/android/location/fused/bd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/android/location/fused/bd;->a:Landroid/content/Context;

    .line 34
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/location/fused/bd;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/location/fused/bd;->a:Landroid/content/Context;

    const-class v3, Lcom/google/android/location/fused/NlpLocationReceiverService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x8000000

    invoke-static {v0, p1, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method
