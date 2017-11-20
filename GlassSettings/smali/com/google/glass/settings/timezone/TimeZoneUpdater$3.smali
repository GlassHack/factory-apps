.class Lcom/google/glass/settings/timezone/TimeZoneUpdater$3;
.super Ljava/lang/Object;
.source "TimeZoneUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/timezone/TimeZoneUpdater;->onLocationChanged(Landroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/timezone/TimeZoneUpdater;

.field final synthetic val$location:Landroid/location/Location;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/timezone/TimeZoneUpdater;Landroid/location/Location;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/timezone/TimeZoneUpdater;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdater$3;->this$0:Lcom/google/glass/settings/timezone/TimeZoneUpdater;

    iput-object p2, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdater$3;->val$location:Landroid/location/Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdater$3;->this$0:Lcom/google/glass/settings/timezone/TimeZoneUpdater;

    iget-object v1, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdater$3;->val$location:Landroid/location/Location;

    invoke-static {v0, v1}, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->access$300(Lcom/google/glass/settings/timezone/TimeZoneUpdater;Landroid/location/Location;)Z

    .line 203
    return-void
.end method
