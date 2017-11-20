.class public Lcom/google/glass/voice/actions/NavigationActionsUtils;
.super Ljava/lang/Object;
.source "NavigationActionsUtils.java"


# static fields
.field private static final ACTION_EXTENSION:Ljava/lang/String; = "._a"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/actions/NavigationActionsUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createGoogleXLocationFromActionLocation(Lcom/google/majel/proto/ActionV2Protos$Location;)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .locals 3
    .param p0, "destination"    # Lcom/google/majel/proto/ActionV2Protos$Location;

    .prologue
    .line 84
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;-><init>()V

    .line 85
    .local v0, "location":Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->hasLatDegrees()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->getLatDegrees()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->setLatitude(D)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->hasLngDegrees()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->getLngDegrees()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->setLongitude(D)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    .line 91
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->hasDescription()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 92
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->setDisplayName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    .line 94
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->hasAddress()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 95
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$Location;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->setAddress(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    .line 97
    :cond_3
    return-object v0
.end method

.method public static getNavigationIntentFromPeanut(Lcom/google/majel/proto/PeanutProtos$Peanut;)Landroid/content/Intent;
    .locals 15
    .param p0, "peanut"    # Lcom/google/majel/proto/PeanutProtos$Peanut;

    .prologue
    const/4 v1, 0x1

    .line 32
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->actionV2:[Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    if-nez v0, :cond_1

    .line 33
    const/4 v10, 0x0

    .line 76
    :cond_0
    :goto_0
    return-object v10

    .line 35
    :cond_1
    const/4 v12, 0x0

    .line 36
    .local v12, "navigationIntent":Landroid/content/Intent;
    const/4 v13, 0x0

    .line 37
    .local v13, "originalDescription":Ljava/lang/String;
    const/4 v8, 0x0

    .line 38
    .local v8, "destination":Lcom/google/majel/proto/ActionV2Protos$Location;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v11, "locations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/googlex/glass/common/proto/TimelineNano$Location;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->actionV2:[Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    array-length v0, v0

    if-ge v9, v0, :cond_5

    .line 40
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Peanut;->actionV2:[Lcom/google/majel/proto/ActionV2Protos$ActionV2;

    aget-object v7, v0, v9

    .line 41
    .local v7, "action":Lcom/google/majel/proto/ActionV2Protos$ActionV2;
    if-eqz v7, :cond_2

    iget-object v0, v7, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->directionsActionExtension:Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;

    if-nez v0, :cond_3

    iget-object v0, v7, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->navigationActionExtension:Lcom/google/majel/proto/ActionV2Protos$NavigationAction;

    if-nez v0, :cond_3

    .line 39
    :cond_2
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 45
    :cond_3
    iget-object v0, v7, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->directionsActionExtension:Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;

    if-nez v0, :cond_4

    iget-object v0, v7, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->navigationActionExtension:Lcom/google/majel/proto/ActionV2Protos$NavigationAction;

    iget-object v14, v0, Lcom/google/majel/proto/ActionV2Protos$NavigationAction;->destination:Lcom/google/majel/proto/ActionV2Protos$Location;

    .line 49
    .local v14, "tmpDestination":Lcom/google/majel/proto/ActionV2Protos$Location;
    :goto_3
    invoke-static {v14}, Lcom/google/glass/voice/actions/NavigationActionsUtils;->createGoogleXLocationFromActionLocation(Lcom/google/majel/proto/ActionV2Protos$Location;)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-virtual {v14}, Lcom/google/majel/proto/ActionV2Protos$Location;->getOriginalDescription()Ljava/lang/String;

    move-result-object v13

    .line 51
    if-nez v8, :cond_2

    .line 53
    move-object v8, v14

    goto :goto_2

    .line 45
    .end local v14    # "tmpDestination":Lcom/google/majel/proto/ActionV2Protos$Location;
    :cond_4
    iget-object v0, v7, Lcom/google/majel/proto/ActionV2Protos$ActionV2;->directionsActionExtension:Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;

    iget-object v14, v0, Lcom/google/majel/proto/ActionV2Protos$DirectionsAction;->destination:Lcom/google/majel/proto/ActionV2Protos$Location;

    goto :goto_3

    .line 59
    .end local v7    # "action":Lcom/google/majel/proto/ActionV2Protos$ActionV2;
    :cond_5
    const-string v6, "2"

    .line 62
    .local v6, "source":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_6

    .line 64
    invoke-static {v11, v13, v6, v1}, Lcom/google/glass/voice/actions/NavigationLauncher;->getNavigationIntent(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v10

    .line 66
    .local v10, "listIntent":Landroid/content/Intent;
    if-nez v10, :cond_0

    .line 71
    .end local v10    # "listIntent":Landroid/content/Intent;
    :cond_6
    if-eqz v8, :cond_7

    .line 72
    invoke-virtual {v8}, Lcom/google/majel/proto/ActionV2Protos$Location;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-virtual {v8}, Lcom/google/majel/proto/ActionV2Protos$Location;->getOriginalDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lcom/google/majel/proto/ActionV2Protos$Location;->getLatDegrees()D

    move-result-wide v2

    .line 74
    invoke-virtual {v8}, Lcom/google/majel/proto/ActionV2Protos$Location;->getLngDegrees()D

    move-result-wide v4

    .line 72
    invoke-static/range {v0 .. v6}, Lcom/google/glass/voice/actions/NavigationLauncher;->getNavigationIntent(Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    :cond_7
    move-object v10, v12

    .line 76
    goto :goto_0
.end method
