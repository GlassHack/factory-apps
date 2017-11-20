.class public Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchingBinder;
.super Landroid/os/Binder;
.source "StitchingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lightcycle/panorama/StitchingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StitchingBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/panorama/StitchingService;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/lightcycle/panorama/StitchingService;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchingBinder;->this$0:Lcom/google/android/apps/lightcycle/panorama/StitchingService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lcom/google/android/apps/lightcycle/panorama/StitchingService;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/StitchingService$StitchingBinder;->this$0:Lcom/google/android/apps/lightcycle/panorama/StitchingService;

    return-object v0
.end method
