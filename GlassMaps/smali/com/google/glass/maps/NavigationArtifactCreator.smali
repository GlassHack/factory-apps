.class public Lcom/google/glass/maps/NavigationArtifactCreator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ESCAPE_FROM:[Ljava/lang/String;

.field private static final ESCAPE_TO:[Ljava/lang/CharSequence;

.field private static final IMAGE_HEIGHT:I = 0x168

.field private static final IMAGE_WIDTH:I = 0xf0

.field private static final STREET_VIEW_BASE_URL:Ljava/lang/String; = "http://maps.googleapis.com/maps/api/streetview?sensor=true&pitch=10&fov=60&size=240x360&location="

.field private static final TRAVEL_MODE_ICON_BASE_URL:Ljava/lang/String; = "http://www.gstatic.com/glass/images/glassware/maps/"

.field private static final TRAVEL_MODE_ICON_MAP:Ljava/util/Map;

.field private static final TRAVEL_MODE_MAP:Ljava/util/Map;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private artifactCardId:Lcom/google/glass/timeline/TimelineItemId;

.field private final context:Landroid/content/Context;

.field private destination:Lcom/google/android/maps/driveabout/nav/ao;

.field private finalStep:Lcom/google/android/maps/driveabout/model/ab;

.field private isAtDestination:Z

.field private task:Landroid/os/AsyncTask;

.field private final timelineItemCreationHelper:Lcom/google/glass/timeline/TimelineItemCreationHelper;

.field private final timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

.field private final timelineItemLocationHelper:Lcom/google/glass/timeline/TimelineItemLocationHelper;

.field private travelMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 34
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/NavigationArtifactCreator;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 37
    new-array v0, v12, [Ljava/lang/String;

    const-string v1, "&"

    aput-object v1, v0, v11

    const-string v1, "\""

    aput-object v1, v0, v8

    const-string v1, "<"

    aput-object v1, v0, v9

    const-string v1, ">"

    aput-object v1, v0, v10

    sput-object v0, Lcom/google/glass/maps/NavigationArtifactCreator;->ESCAPE_FROM:[Ljava/lang/String;

    .line 42
    new-array v0, v12, [Ljava/lang/CharSequence;

    const-string v1, "&amp;"

    aput-object v1, v0, v11

    const-string v1, "&quot;"

    aput-object v1, v0, v8

    const-string v1, "&lt;"

    aput-object v1, v0, v9

    const-string v1, "&gt;"

    aput-object v1, v0, v10

    sput-object v0, Lcom/google/glass/maps/NavigationArtifactCreator;->ESCAPE_TO:[Ljava/lang/CharSequence;

    .line 66
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "http://www.gstatic.com/glass/images/glassware/maps/icons_30_0039_geo_drive.png"

    .line 67
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "http://www.gstatic.com/glass/images/glassware/maps/icons_30_0037_geo_walk.png"

    .line 68
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "http://www.gstatic.com/glass/images/glassware/maps/icons_30_0040_geo_bike.png"

    .line 69
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "http://www.gstatic.com/glass/images/glassware/maps/icons_30_0038_geo_transit.png"

    .line 65
    invoke-static/range {v0 .. v7}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/NavigationArtifactCreator;->TRAVEL_MODE_ICON_MAP:Ljava/util/Map;

    .line 73
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 74
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 75
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 76
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 72
    invoke-static/range {v0 .. v7}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/NavigationArtifactCreator;->TRAVEL_MODE_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 90
    .line 91
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v0

    .line 92
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemCreationHelper;

    move-result-object v1

    .line 93
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemLocationHelper;

    move-result-object v2

    .line 90
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/glass/maps/NavigationArtifactCreator;-><init>(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/glass/timeline/TimelineItemCreationHelper;Lcom/google/glass/timeline/TimelineItemLocationHelper;)V

    .line 94
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/glass/timeline/TimelineItemCreationHelper;Lcom/google/glass/timeline/TimelineItemLocationHelper;)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/google/glass/maps/NavigationArtifactCreator;->context:Landroid/content/Context;

    .line 101
    iput-object p2, p0, Lcom/google/glass/maps/NavigationArtifactCreator;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    .line 102
    iput-object p3, p0, Lcom/google/glass/maps/NavigationArtifactCreator;->timelineItemCreationHelper:Lcom/google/glass/timeline/TimelineItemCreationHelper;

    .line 103
    iput-object p4, p0, Lcom/google/glass/maps/NavigationArtifactCreator;->timelineItemLocationHelper:Lcom/google/glass/timeline/TimelineItemLocationHelper;

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/maps/NavigationArtifactCreator;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/glass/maps/NavigationArtifactCreator;->createArtifact()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/maps/NavigationArtifactCreator;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/glass/maps/NavigationArtifactCreator;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/maps/NavigationArtifactCreator;)Lcom/google/glass/timeline/TimelineItemId;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/glass/maps/NavigationArtifactCreator;->artifactCardId:Lcom/google/glass/timeline/TimelineItemId;

    return-object v0
.end method

.method private createArtifact()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v5, 0x0

    .line 162
    iget-object v0, p0, Lcom/google/glass/maps/NavigationArtifactCreator;->destination:Lcom/google/android/maps/driveabout/nav/ao;

    if-nez v0, :cond_0

    .line 163
    sget-object v0, Lcom/google/glass/maps/NavigationArtifactCreator;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Cannot create an artifact without a destination"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    :goto_0
    return-void

    .line 167
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    const-string v0, "<article>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    iget-object v0, p0, Lcom/google/glass/maps/NavigationArtifactCreator;->destination:Lcom/google/android/maps/driveabout/nav/ao;

    iget-object v2, p0, Lcom/google/glass/maps/NavigationArtifactCreator;->finalStep:Lcom/google/android/maps/driveabout/model/ab;

    invoke-static {v0, v2}, Lcom/google/glass/maps/NavigationArtifactCreator;->getStreetViewUrl(Lcom/google/android/maps/driveabout/nav/ao;Lcom/google/android/maps/driveabout/model/ab;)Ljava/lang/String;

    move-result-object v0

    .line 173
    sget-object v2, Lcom/google/glass/maps/NavigationArtifactCreator;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-interface {v2}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "streetViewUrl: %s for dest: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/glass/maps/NavigationArtifactCreator;->destination:Lcom/google/android/maps/driveabout/nav/ao;

    .line 174
    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/nav/ao;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 173
    invoke-static {v7, v2, v3}, Lcom/google/glass/logging/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 175
    if-eqz v0, :cond_1

    .line 176
    const-string v2, "<figure><img src=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 177
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" width=\"240\" height=\"360\"/></figure>"

    .line 178
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    :cond_1
    const-string v0, "<section><p class=\"text-auto-size\">"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<span style=\"color: #808080\">"

    .line 183
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/maps/NavigationArtifactCreator;->context:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/google/glass/maps/NavigationArtifactCreator;->isAtDestination:Z

    if-eqz v0, :cond_3

    sget v0, Lcom/google/glass/maps/R$string;->operation_arrived_at:I

    .line 184
    :goto_1
    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</span>"

    .line 186
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<br>"

    .line 187
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/glass/maps/NavigationArtifactCreator;->destination:Lcom/google/android/maps/driveabout/nav/ao;

    .line 188
    invoke-direct {p0, v2}, Lcom/google/glass/maps/NavigationArtifactCreator;->getDescription(Lcom/google/android/maps/driveabout/nav/ao;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</p></section>"

    .line 189
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    sget-object v0, Lcom/google/glass/maps/NavigationArtifactCreator;->TRAVEL_MODE_ICON_MAP:Ljava/util/Map;

    iget v2, p0, Lcom/google/glass/maps/NavigationArtifactCreator;->travelMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 193
    if-eqz v0, :cond_2

    .line 194
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x35

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "<footer><img src=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" width=\"30\" height=\"30\"/>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</footer>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    :cond_2
    const-string v0, "</article>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    new-instance v2, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    invoke-direct {v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;-><init>()V

    .line 201
    const/16 v0, 0x9

    invoke-virtual {v2, v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->setAction(I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 202
    sget-object v0, Lcom/google/glass/maps/NavigationArtifactCreator;->TRAVEL_MODE_MAP:Ljava/util/Map;

    iget v3, p0, Lcom/google/glass/maps/NavigationArtifactCreator;->travelMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;->setTravelMode(I)Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;

    .line 204
    iget-object v0, p0, Lcom/google/glass/maps/NavigationArtifactCreator;->timelineItemCreationHelper:Lcom/google/glass/timeline/TimelineItemCreationHelper;

    invoke-virtual {v0}, Lcom/google/glass/timeline/TimelineItemCreationHelper;->createTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    .line 205
    iget-object v3, p0, Lcom/google/glass/maps/NavigationArtifactCreator;->timelineItemLocationHelper:Lcom/google/glass/timeline/TimelineItemLocationHelper;

    invoke-virtual {v3, v0}, Lcom/google/glass/timeline/TimelineItemLocationHelper;->populateLocation(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 206
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setHtml(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 207
    iget-object v1, p0, Lcom/google/glass/maps/NavigationArtifactCreator;->destination:Lcom/google/android/maps/driveabout/nav/ao;

    invoke-direct {p0, v1}, Lcom/google/glass/maps/NavigationArtifactCreator;->getLocation(Lcom/google/android/maps/driveabout/nav/ao;)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setLocation(Lcom/google/googlex/glass/common/proto/TimelineNano$Location;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 208
    invoke-static {v0, v2}, Lcom/google/glass/timeline/TimelineItemUtils;->addMenuItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/googlex/glass/common/proto/TimelineNano$MenuItem;)V

    .line 209
    invoke-static {v0, v7}, Lcom/google/glass/timeline/TimelineItemUtils;->addMenuItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;I)V

    .line 210
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setAttributionType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 212
    iget-object v1, p0, Lcom/google/glass/maps/NavigationArtifactCreator;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    sget-object v2, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->NAVIGATION:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->insertTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;)Landroid/net/Uri;

    .line 213
    new-instance v1, Lcom/google/glass/timeline/TimelineItemId;

    invoke-direct {v1, v0}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    iput-object v1, p0, Lcom/google/glass/maps/NavigationArtifactCreator;->artifactCardId:Lcom/google/glass/timeline/TimelineItemId;

    goto/16 :goto_0

    .line 183
    :cond_3
    sget v0, Lcom/google/glass/maps/R$string;->operation_directions_to:I

    goto/16 :goto_1
.end method

.method private escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 249
    sget-object v0, Lcom/google/glass/maps/NavigationArtifactCreator;->ESCAPE_FROM:[Ljava/lang/String;

    sget-object v1, Lcom/google/glass/maps/NavigationArtifactCreator;->ESCAPE_TO:[Ljava/lang/CharSequence;

    invoke-static {p1, v0, v1}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private getDescription(Lcom/google/android/maps/driveabout/nav/ao;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/ao;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/ao;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/maps/NavigationArtifactCreator;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<br>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/ao;->d()Lcom/google/android/maps/driveabout/nav/ap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 238
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/ao;->d()Lcom/google/android/maps/driveabout/nav/ap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/nav/ap;->a()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 239
    if-lez v0, :cond_1

    .line 240
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/ao;->d()Lcom/google/android/maps/driveabout/nav/ap;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/maps/driveabout/nav/ap;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/glass/maps/NavigationArtifactCreator;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 245
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLocation(Lcom/google/android/maps/driveabout/nav/ao;)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;
    .locals 5

    .prologue
    const-wide v3, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    .line 253
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;-><init>()V

    .line 254
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/ao;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 255
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/ao;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->setDisplayName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    .line 257
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/ao;->d()Lcom/google/android/maps/driveabout/nav/ap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 258
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/ao;->d()Lcom/google/android/maps/driveabout/nav/ap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/nav/ap;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->setAddress(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    .line 260
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/ao;->c()Lcom/google/android/maps/driveabout/model/m;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 261
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/ao;->c()Lcom/google/android/maps/driveabout/model/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/m;->a()I

    move-result v1

    int-to-double v1, v1

    mul-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->setLatitude(D)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    .line 262
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/ao;->c()Lcom/google/android/maps/driveabout/model/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/m;->b()I

    move-result v1

    int-to-double v1, v1

    mul-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Location;->setLongitude(D)Lcom/google/googlex/glass/common/proto/TimelineNano$Location;

    .line 264
    :cond_2
    return-object v0
.end method

.method private static getStreetViewUrl(Lcom/google/android/maps/driveabout/nav/ao;Lcom/google/android/maps/driveabout/model/ab;)Ljava/lang/String;
    .locals 9

    .prologue
    const-wide v5, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    .line 218
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ao;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    const-string v0, "http://maps.googleapis.com/maps/api/streetview?sensor=true&pitch=10&fov=60&size=240x360&location="

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ao;->c()Lcom/google/android/maps/driveabout/model/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/m;->a()I

    move-result v1

    int-to-double v1, v1

    mul-double/2addr v1, v5

    .line 220
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ao;->c()Lcom/google/android/maps/driveabout/model/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/model/m;->b()I

    move-result v3

    int-to-double v3, v3

    mul-double/2addr v3, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x31

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    :goto_0
    return-object v0

    .line 221
    :cond_0
    if-eqz p1, :cond_1

    .line 224
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/nav/ao;->c()Lcom/google/android/maps/driveabout/model/m;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/model/ab;->a(Lcom/google/android/maps/driveabout/model/m;)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/model/ab;->a(Lcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)D

    move-result-wide v0

    .line 225
    const-string v2, "http://maps.googleapis.com/maps/api/streetview?sensor=true&pitch=10&fov=60&size=240x360&location="

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/ab;->b()D

    move-result-wide v3

    .line 226
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/model/ab;->d()D

    move-result-wide v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x52

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&heading="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 228
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getArtifactCardId()Lcom/google/glass/timeline/TimelineItemId;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/glass/maps/NavigationArtifactCreator;->artifactCardId:Lcom/google/glass/timeline/TimelineItemId;

    return-object v0
.end method

.method public startCreatingArtifact(Lcom/google/android/maps/driveabout/nav/ao;Lcom/google/android/maps/driveabout/model/ab;IZZ)V
    .locals 3

    .prologue
    .line 120
    iput-object p1, p0, Lcom/google/glass/maps/NavigationArtifactCreator;->destination:Lcom/google/android/maps/driveabout/nav/ao;

    .line 121
    iput-object p2, p0, Lcom/google/glass/maps/NavigationArtifactCreator;->finalStep:Lcom/google/android/maps/driveabout/model/ab;

    .line 122
    iput p3, p0, Lcom/google/glass/maps/NavigationArtifactCreator;->travelMode:I

    .line 123
    iput-boolean p4, p0, Lcom/google/glass/maps/NavigationArtifactCreator;->isAtDestination:Z

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/maps/NavigationArtifactCreator;->artifactCardId:Lcom/google/glass/timeline/TimelineItemId;

    .line 126
    new-instance v0, Lcom/google/glass/maps/NavigationArtifactCreator$1;

    invoke-direct {v0, p0, p5}, Lcom/google/glass/maps/NavigationArtifactCreator$1;-><init>(Lcom/google/glass/maps/NavigationArtifactCreator;Z)V

    iput-object v0, p0, Lcom/google/glass/maps/NavigationArtifactCreator;->task:Landroid/os/AsyncTask;

    .line 136
    iget-object v0, p0, Lcom/google/glass/maps/NavigationArtifactCreator;->task:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 137
    return-void
.end method

.method public waitUntilDone()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/maps/NavigationArtifactCreator;->task:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 151
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    sget-object v0, Lcom/google/glass/maps/NavigationArtifactCreator;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Interrupted!"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 148
    :catch_1
    move-exception v0

    .line 149
    sget-object v1, Lcom/google/glass/maps/NavigationArtifactCreator;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Exeception inserting card"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
