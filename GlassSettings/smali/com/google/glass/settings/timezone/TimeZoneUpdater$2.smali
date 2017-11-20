.class Lcom/google/glass/settings/timezone/TimeZoneUpdater$2;
.super Ljava/lang/Object;
.source "TimeZoneUpdater.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/timezone/TimeZoneUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Landroid/location/Location;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/timezone/TimeZoneUpdater;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/timezone/TimeZoneUpdater;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/timezone/TimeZoneUpdater;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdater$2;->this$0:Lcom/google/glass/settings/timezone/TimeZoneUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 84
    check-cast p1, Landroid/location/Location;

    invoke-virtual {p0, p1}, Lcom/google/glass/settings/timezone/TimeZoneUpdater$2;->apply(Landroid/location/Location;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public apply(Landroid/location/Location;)Ljava/lang/Void;
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/glass/settings/timezone/TimeZoneUpdater$2;->this$0:Lcom/google/glass/settings/timezone/TimeZoneUpdater;

    invoke-static {v0, p1}, Lcom/google/glass/settings/timezone/TimeZoneUpdater;->access$000(Lcom/google/glass/settings/timezone/TimeZoneUpdater;Landroid/location/Location;)V

    .line 88
    const/4 v0, 0x0

    return-object v0
.end method
