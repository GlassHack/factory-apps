.class Lcom/google/glass/maps/location/BroadcastLocationSource$1;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/location/BroadcastLocationSource;


# direct methods
.method varargs constructor <init>(Lcom/google/glass/maps/location/BroadcastLocationSource;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/glass/maps/location/BroadcastLocationSource$1;->this$0:Lcom/google/glass/maps/location/BroadcastLocationSource;

    invoke-direct {p0, p2}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/glass/maps/location/BroadcastLocationSource$1;->this$0:Lcom/google/glass/maps/location/BroadcastLocationSource;

    invoke-static {v0}, Lcom/google/glass/maps/location/BroadcastLocationSource;->access$000(Lcom/google/glass/maps/location/BroadcastLocationSource;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 70
    iget-object v0, p0, Lcom/google/glass/maps/location/BroadcastLocationSource$1;->this$0:Lcom/google/glass/maps/location/BroadcastLocationSource;

    invoke-static {v0}, Lcom/google/glass/maps/location/BroadcastLocationSource;->access$000(Lcom/google/glass/maps/location/BroadcastLocationSource;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v3, "got location broadcast"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    iget-object v0, p0, Lcom/google/glass/maps/location/BroadcastLocationSource$1;->this$0:Lcom/google/glass/maps/location/BroadcastLocationSource;

    invoke-static {v0}, Lcom/google/glass/maps/location/BroadcastLocationSource;->access$100(Lcom/google/glass/maps/location/BroadcastLocationSource;)Lcom/google/glass/navlib/NavigationImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/navlib/NavigationImpl;->getLocationPipeline()Lcom/google/android/maps/driveabout/location/m;

    move-result-object v0

    .line 72
    if-nez v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/google/glass/maps/location/BroadcastLocationSource$1;->this$0:Lcom/google/glass/maps/location/BroadcastLocationSource;

    invoke-static {v0}, Lcom/google/glass/maps/location/BroadcastLocationSource;->access$000(Lcom/google/glass/maps/location/BroadcastLocationSource;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v2, "location pipeline not yet initialized"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v1}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    :cond_0
    return-void

    .line 77
    :cond_1
    iget-object v3, p0, Lcom/google/glass/maps/location/BroadcastLocationSource$1;->this$0:Lcom/google/glass/maps/location/BroadcastLocationSource;

    invoke-static {v3}, Lcom/google/glass/maps/location/BroadcastLocationSource;->access$200(Lcom/google/glass/maps/location/BroadcastLocationSource;)Z

    move-result v3

    .line 78
    iget-object v4, p0, Lcom/google/glass/maps/location/BroadcastLocationSource$1;->this$0:Lcom/google/glass/maps/location/BroadcastLocationSource;

    const-string v5, "enable"

    iget-object v6, p0, Lcom/google/glass/maps/location/BroadcastLocationSource$1;->this$0:Lcom/google/glass/maps/location/BroadcastLocationSource;

    .line 79
    invoke-static {v6}, Lcom/google/glass/maps/location/BroadcastLocationSource;->access$200(Lcom/google/glass/maps/location/BroadcastLocationSource;)Z

    move-result v6

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 78
    invoke-static {v4, v5}, Lcom/google/glass/maps/location/BroadcastLocationSource;->access$202(Lcom/google/glass/maps/location/BroadcastLocationSource;Z)Z

    .line 80
    iget-object v4, p0, Lcom/google/glass/maps/location/BroadcastLocationSource$1;->this$0:Lcom/google/glass/maps/location/BroadcastLocationSource;

    invoke-static {v4}, Lcom/google/glass/maps/location/BroadcastLocationSource;->access$000(Lcom/google/glass/maps/location/BroadcastLocationSource;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "enabled broadcasted locations: %s"

    new-array v6, v2, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/glass/maps/location/BroadcastLocationSource$1;->this$0:Lcom/google/glass/maps/location/BroadcastLocationSource;

    invoke-static {v7}, Lcom/google/glass/maps/location/BroadcastLocationSource;->access$200(Lcom/google/glass/maps/location/BroadcastLocationSource;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    iget-object v4, p0, Lcom/google/glass/maps/location/BroadcastLocationSource$1;->this$0:Lcom/google/glass/maps/location/BroadcastLocationSource;

    invoke-static {v4}, Lcom/google/glass/maps/location/BroadcastLocationSource;->access$200(Lcom/google/glass/maps/location/BroadcastLocationSource;)Z

    move-result v4

    if-eq v3, v4, :cond_2

    .line 82
    iget-object v3, p0, Lcom/google/glass/maps/location/BroadcastLocationSource$1;->this$0:Lcom/google/glass/maps/location/BroadcastLocationSource;

    invoke-static {v3}, Lcom/google/glass/maps/location/BroadcastLocationSource;->access$200(Lcom/google/glass/maps/location/BroadcastLocationSource;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 83
    iget-object v3, p0, Lcom/google/glass/maps/location/BroadcastLocationSource$1;->this$0:Lcom/google/glass/maps/location/BroadcastLocationSource;

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/location/m;->a(Lcom/google/android/maps/driveabout/location/t;)V

    .line 90
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/glass/maps/location/BroadcastLocationSource$1;->this$0:Lcom/google/glass/maps/location/BroadcastLocationSource;

    invoke-static {v0}, Lcom/google/glass/maps/location/BroadcastLocationSource;->access$200(Lcom/google/glass/maps/location/BroadcastLocationSource;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/google/glass/maps/location/BroadcastLocationSource$1;->this$0:Lcom/google/glass/maps/location/BroadcastLocationSource;

    invoke-static {v0}, Lcom/google/glass/maps/location/BroadcastLocationSource;->access$400(Lcom/google/glass/maps/location/BroadcastLocationSource;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v0, Landroid/location/Location;

    iget-object v3, p0, Lcom/google/glass/maps/location/BroadcastLocationSource$1;->this$0:Lcom/google/glass/maps/location/BroadcastLocationSource;

    .line 97
    invoke-static {v3}, Lcom/google/glass/maps/location/BroadcastLocationSource;->access$400(Lcom/google/glass/maps/location/BroadcastLocationSource;)Landroid/location/Location;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 99
    :goto_1
    const-string v3, "location"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 100
    const-string v3, "location"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 101
    aget-object v1, v3, v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 102
    aget-object v1, v3, v2

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 103
    invoke-virtual {v0, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    .line 104
    invoke-virtual {v0, v6, v7}, Landroid/location/Location;->setLongitude(D)V

    move v1, v2

    .line 108
    :cond_3
    const-string v3, "bearing"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 109
    const-string v1, "bearing"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/Location;->setBearing(F)V

    move v1, v2

    .line 113
    :cond_4
    const-string v3, "accuracy"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 114
    const-string v1, "accuracy"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/location/Location;->setAccuracy(F)V

    .line 118
    :goto_2
    if-eqz v2, :cond_7

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setTime(J)V

    .line 120
    iget-object v1, p0, Lcom/google/glass/maps/location/BroadcastLocationSource$1;->this$0:Lcom/google/glass/maps/location/BroadcastLocationSource;

    invoke-static {v1, v0}, Lcom/google/glass/maps/location/BroadcastLocationSource;->access$402(Lcom/google/glass/maps/location/BroadcastLocationSource;Landroid/location/Location;)Landroid/location/Location;

    .line 121
    iget-object v0, p0, Lcom/google/glass/maps/location/BroadcastLocationSource$1;->this$0:Lcom/google/glass/maps/location/BroadcastLocationSource;

    invoke-static {v0}, Lcom/google/glass/maps/location/BroadcastLocationSource;->access$500(Lcom/google/glass/maps/location/BroadcastLocationSource;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/location/b;

    .line 122
    iget-object v2, p0, Lcom/google/glass/maps/location/BroadcastLocationSource$1;->this$0:Lcom/google/glass/maps/location/BroadcastLocationSource;

    invoke-static {v2}, Lcom/google/glass/maps/location/BroadcastLocationSource;->access$400(Lcom/google/glass/maps/location/BroadcastLocationSource;)Landroid/location/Location;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/maps/driveabout/location/b;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_3

    .line 85
    :cond_5
    iget-object v3, p0, Lcom/google/glass/maps/location/BroadcastLocationSource$1;->this$0:Lcom/google/glass/maps/location/BroadcastLocationSource;

    invoke-static {v3}, Lcom/google/glass/maps/location/BroadcastLocationSource;->access$300(Lcom/google/glass/maps/location/BroadcastLocationSource;)Lcom/google/android/maps/driveabout/location/t;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/location/m;->a(Lcom/google/android/maps/driveabout/location/t;)V

    goto/16 :goto_0

    .line 97
    :cond_6
    new-instance v0, Landroid/location/Location;

    const-string v3, "gps"

    invoke-direct {v0, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 126
    :cond_7
    const-string v0, "orientation"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/google/glass/maps/location/BroadcastLocationSource$1;->this$0:Lcom/google/glass/maps/location/BroadcastLocationSource;

    const-string v1, "orientation"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/google/glass/maps/location/BroadcastLocationSource;->access$602(Lcom/google/glass/maps/location/BroadcastLocationSource;F)F

    .line 128
    new-instance v0, Lcom/google/android/maps/driveabout/location/z;

    const-string v1, "android_orientation"

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/glass/maps/location/BroadcastLocationSource$1;->this$0:Lcom/google/glass/maps/location/BroadcastLocationSource;

    .line 130
    invoke-static {v4}, Lcom/google/glass/maps/location/BroadcastLocationSource;->access$600(Lcom/google/glass/maps/location/BroadcastLocationSource;)F

    move-result v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/location/z;-><init>(Ljava/lang/String;JFF)V

    .line 131
    iget-object v1, p0, Lcom/google/glass/maps/location/BroadcastLocationSource$1;->this$0:Lcom/google/glass/maps/location/BroadcastLocationSource;

    invoke-static {v1}, Lcom/google/glass/maps/location/BroadcastLocationSource;->access$700(Lcom/google/glass/maps/location/BroadcastLocationSource;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/location/b;

    .line 132
    invoke-interface {v1, v0}, Lcom/google/android/maps/driveabout/location/b;->onOrientationChanged(Lcom/google/android/maps/driveabout/location/z;)V

    goto :goto_4

    :cond_8
    move v2, v1

    goto/16 :goto_2
.end method
