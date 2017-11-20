.class public Lcom/google/glass/maps/GlassUserEventLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static shouldLog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/GlassUserEventLogger;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 17
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/glass/maps/GlassUserEventLogger;->shouldLog:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static disableLogging()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/glass/maps/GlassUserEventLogger;->shouldLog:Z

    .line 22
    return-void
.end method

.method private static getUserEventHelper(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;
    .locals 1

    .prologue
    .line 286
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static logChangeTrip(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 166
    const-string v0, "m"

    invoke-static {p0}, Lcom/google/glass/maps/util/TravelModeUtils;->getTravelMode(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 167
    sget-boolean v1, Lcom/google/glass/maps/GlassUserEventLogger;->shouldLog:Z

    if-eqz v1, :cond_0

    .line 168
    invoke-static {p0}, Lcom/google/glass/maps/GlassUserEventLogger;->getUserEventHelper(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v1

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->CHANGE_TRIP:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    sget-object v1, Lcom/google/glass/maps/GlassUserEventLogger;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Logging user simulation event locally [action=CHANGE_TRIP, data=%s]."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static logDirectionsEnd(Landroid/content/Context;Lcom/google/glass/maps/GlassUserEventLogger$EndReason;I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 255
    const-string v0, "m"

    .line 256
    invoke-static {p0}, Lcom/google/glass/maps/util/TravelModeUtils;->getTravelMode(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "r"

    aput-object v3, v2, v5

    .line 257
    invoke-static {p1}, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;->access$000(Lcom/google/glass/maps/GlassUserEventLogger$EndReason;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x2

    const-string v4, "d"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    .line 258
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 255
    invoke-static {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 259
    sget-boolean v1, Lcom/google/glass/maps/GlassUserEventLogger;->shouldLog:Z

    if-eqz v1, :cond_0

    .line 260
    invoke-static {p0}, Lcom/google/glass/maps/GlassUserEventLogger;->getUserEventHelper(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v1

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->DIRECTIONS_END:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 264
    :goto_0
    return-void

    .line 262
    :cond_0
    sget-object v1, Lcom/google/glass/maps/GlassUserEventLogger;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Logging user simulation event locally [action=DIRECTIONS_END, data=%s]."

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static logDirectionsError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 238
    const-string v0, "m"

    .line 239
    invoke-static {p0}, Lcom/google/glass/maps/util/TravelModeUtils;->getTravelMode(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "e"

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    .line 238
    invoke-static {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 241
    sget-boolean v1, Lcom/google/glass/maps/GlassUserEventLogger;->shouldLog:Z

    if-eqz v1, :cond_0

    .line 242
    invoke-static {p0}, Lcom/google/glass/maps/GlassUserEventLogger;->getUserEventHelper(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v1

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->DIRECTIONS_ERROR:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 246
    :goto_0
    return-void

    .line 244
    :cond_0
    sget-object v1, Lcom/google/glass/maps/GlassUserEventLogger;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Logging user simulation event locally [action=DIRECTIONS_ERROR, data=%s]."

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static logDirectionsReceived(Landroid/content/Context;II)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 215
    const-string v0, "m"

    .line 216
    invoke-static {p0}, Lcom/google/glass/maps/util/TravelModeUtils;->getTravelMode(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "t"

    aput-object v3, v2, v5

    .line 217
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x2

    const-string v4, "s"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    .line 218
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 215
    invoke-static {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 219
    sget-boolean v1, Lcom/google/glass/maps/GlassUserEventLogger;->shouldLog:Z

    if-eqz v1, :cond_0

    .line 220
    invoke-static {p0}, Lcom/google/glass/maps/GlassUserEventLogger;->getUserEventHelper(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v1

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->DIRECTIONS_RECEIVED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 225
    :goto_0
    return-void

    .line 222
    :cond_0
    sget-object v1, Lcom/google/glass/maps/GlassUserEventLogger;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Logging user simulation event locally [action=DIRECTIONS_RECEIVED, data=%s]."

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static logDirectionsRefinements(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 228
    const-string v0, "m"

    invoke-static {p0}, Lcom/google/glass/maps/util/TravelModeUtils;->getTravelMode(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 229
    sget-boolean v1, Lcom/google/glass/maps/GlassUserEventLogger;->shouldLog:Z

    if-eqz v1, :cond_0

    .line 230
    invoke-static {p0}, Lcom/google/glass/maps/GlassUserEventLogger;->getUserEventHelper(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v1

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->DIRECTIONS_REFINEMENTS:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 235
    :goto_0
    return-void

    .line 232
    :cond_0
    sget-object v1, Lcom/google/glass/maps/GlassUserEventLogger;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Logging user simulation event locally [action=DIRECTIONS_REFINEMENTS, data=%s]."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static logDirectionsScroll(Landroid/content/Context;ILjava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 273
    const-string v0, "m"

    .line 274
    invoke-static {p0}, Lcom/google/glass/maps/util/TravelModeUtils;->getTravelMode(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "i"

    aput-object v3, v2, v5

    .line 275
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x2

    const-string v4, "t"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    .line 273
    invoke-static {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 277
    sget-boolean v1, Lcom/google/glass/maps/GlassUserEventLogger;->shouldLog:Z

    if-eqz v1, :cond_0

    .line 278
    invoke-static {p0}, Lcom/google/glass/maps/GlassUserEventLogger;->getUserEventHelper(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v1

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->DIRECTIONS_SCROLL:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 282
    :goto_0
    return-void

    .line 280
    :cond_0
    sget-object v1, Lcom/google/glass/maps/GlassUserEventLogger;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Logging user simulation event locally [action=DIRECTIONS_SCROLL, data=%s]."

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static logDirectionsStart(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 206
    const-string v0, "m"

    invoke-static {p0}, Lcom/google/glass/maps/util/TravelModeUtils;->getTravelMode(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 207
    sget-boolean v1, Lcom/google/glass/maps/GlassUserEventLogger;->shouldLog:Z

    if-eqz v1, :cond_0

    .line 208
    invoke-static {p0}, Lcom/google/glass/maps/GlassUserEventLogger;->getUserEventHelper(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v1

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->DIRECTIONS_START:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 212
    :goto_0
    return-void

    .line 210
    :cond_0
    sget-object v1, Lcom/google/glass/maps/GlassUserEventLogger;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Logging user simulation event locally [action=DIRECTIONS_START, data=%s]."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static logNavigationEnd(Landroid/content/Context;Lcom/google/glass/maps/GlassUserEventLogger$EndReason;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 77
    const-string v0, "m"

    .line 78
    invoke-static {p0}, Lcom/google/glass/maps/util/TravelModeUtils;->getTravelMode(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "r"

    aput-object v3, v2, v5

    .line 79
    invoke-static {p1}, Lcom/google/glass/maps/GlassUserEventLogger$EndReason;->access$000(Lcom/google/glass/maps/GlassUserEventLogger$EndReason;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x2

    const-string v4, "d"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    .line 80
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 77
    invoke-static {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->createEventTupleBuilder(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 82
    if-eqz p3, :cond_0

    .line 83
    const-string v1, "sr"

    invoke-static {v0, v1, p3}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    :cond_0
    if-eqz p4, :cond_1

    .line 86
    const-string v1, "mr"

    invoke-static {v0, v1, p4}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    :cond_1
    if-eqz p5, :cond_2

    .line 89
    const-string v1, "cs"

    invoke-static {v0, v1, p5}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    :cond_2
    if-eqz p6, :cond_3

    .line 92
    const-string v1, "ts"

    invoke-static {v0, v1, p6}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    sget-boolean v1, Lcom/google/glass/maps/GlassUserEventLogger;->shouldLog:Z

    if-eqz v1, :cond_4

    .line 97
    invoke-static {p0}, Lcom/google/glass/maps/GlassUserEventLogger;->getUserEventHelper(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v1

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->NAVIGATION_END:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_4
    sget-object v1, Lcom/google/glass/maps/GlassUserEventLogger;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Logging user simulation event locally [action=NAVIGATION_END, data=%s]."

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static logNavigationError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 104
    const-string v0, "m"

    .line 105
    invoke-static {p0}, Lcom/google/glass/maps/util/TravelModeUtils;->getTravelMode(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "e"

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    .line 104
    invoke-static {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 107
    sget-boolean v1, Lcom/google/glass/maps/GlassUserEventLogger;->shouldLog:Z

    if-eqz v1, :cond_0

    .line 108
    invoke-static {p0}, Lcom/google/glass/maps/GlassUserEventLogger;->getUserEventHelper(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v1

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->NAVIGATION_ERROR:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    sget-object v1, Lcom/google/glass/maps/GlassUserEventLogger;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Logging user simulation event locally [action=NAVIGATION_ERROR, data=%s]."

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static logNavigationStart(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 28
    const-string v0, "m"

    invoke-static {p0}, Lcom/google/glass/maps/util/TravelModeUtils;->getTravelMode(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 29
    sget-boolean v1, Lcom/google/glass/maps/GlassUserEventLogger;->shouldLog:Z

    if-eqz v1, :cond_0

    .line 30
    invoke-static {p0}, Lcom/google/glass/maps/GlassUserEventLogger;->getUserEventHelper(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v1

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->NAVIGATION_START:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 34
    :goto_0
    return-void

    .line 32
    :cond_0
    sget-object v1, Lcom/google/glass/maps/GlassUserEventLogger;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Logging user simulation event locally [action=NAVIGATION_START, data=%s]."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static logSelectRefinement(Landroid/content/Context;I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 192
    const-string v0, "m"

    .line 193
    invoke-static {p0}, Lcom/google/glass/maps/util/TravelModeUtils;->getTravelMode(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "i"

    aput-object v3, v2, v4

    .line 194
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 192
    invoke-static {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 195
    sget-boolean v1, Lcom/google/glass/maps/GlassUserEventLogger;->shouldLog:Z

    if-eqz v1, :cond_0

    .line 196
    invoke-static {p0}, Lcom/google/glass/maps/GlassUserEventLogger;->getUserEventHelper(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v1

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->SELECT_REFINEMENT:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 200
    :goto_0
    return-void

    .line 198
    :cond_0
    sget-object v1, Lcom/google/glass/maps/GlassUserEventLogger;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Logging user simulation event locally [action=SELECT_REFINEMENT, data=%s]."

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static logSelectTrip(Landroid/content/Context;I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 178
    const-string v0, "m"

    .line 179
    invoke-static {p0}, Lcom/google/glass/maps/util/TravelModeUtils;->getTravelMode(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "i"

    aput-object v3, v2, v4

    .line 180
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 178
    invoke-static {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 181
    sget-boolean v1, Lcom/google/glass/maps/GlassUserEventLogger;->shouldLog:Z

    if-eqz v1, :cond_0

    .line 182
    invoke-static {p0}, Lcom/google/glass/maps/GlassUserEventLogger;->getUserEventHelper(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v1

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->SELECT_TRIP:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 186
    :goto_0
    return-void

    .line 184
    :cond_0
    sget-object v1, Lcom/google/glass/maps/GlassUserEventLogger;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Logging user simulation event locally [action=SELECT_TRIP, data=%s]."

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static logShowRouteOverview(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 140
    const-string v0, "m"

    invoke-static {p0}, Lcom/google/glass/maps/util/TravelModeUtils;->getTravelMode(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 141
    sget-boolean v1, Lcom/google/glass/maps/GlassUserEventLogger;->shouldLog:Z

    if-eqz v1, :cond_0

    .line 142
    invoke-static {p0}, Lcom/google/glass/maps/GlassUserEventLogger;->getUserEventHelper(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v1

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->SHOW_ROUTE_OVERVIEW:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 147
    :goto_0
    return-void

    .line 144
    :cond_0
    sget-object v1, Lcom/google/glass/maps/GlassUserEventLogger;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Logging user simulation event locally [action=SHOW_ROUTE_OVERVIEW, data=%s]."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static logShowSteps(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 153
    const-string v0, "m"

    invoke-static {p0}, Lcom/google/glass/maps/util/TravelModeUtils;->getTravelMode(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 154
    sget-boolean v1, Lcom/google/glass/maps/GlassUserEventLogger;->shouldLog:Z

    if-eqz v1, :cond_0

    .line 155
    invoke-static {p0}, Lcom/google/glass/maps/GlassUserEventLogger;->getUserEventHelper(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v1

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->SHOW_STEPS:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 160
    :goto_0
    return-void

    .line 157
    :cond_0
    sget-object v1, Lcom/google/glass/maps/GlassUserEventLogger;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Logging user simulation event locally [action=SHOW_STEPS, data=%s]."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static logTravelModeChange(Landroid/content/Context;II)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 121
    if-ne p1, p2, :cond_0

    .line 134
    :goto_0
    return-void

    .line 125
    :cond_0
    const-string v0, "f"

    .line 126
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "t"

    aput-object v3, v2, v4

    .line 127
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 125
    invoke-static {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 128
    sget-boolean v1, Lcom/google/glass/maps/GlassUserEventLogger;->shouldLog:Z

    if-eqz v1, :cond_1

    .line 129
    invoke-static {p0}, Lcom/google/glass/maps/GlassUserEventLogger;->getUserEventHelper(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v1

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->TRAVEL_MODE_CHANGE:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :cond_1
    sget-object v1, Lcom/google/glass/maps/GlassUserEventLogger;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Logging user simulation event locally [action=TRAVEL_MODE_CHANGE, data=%s]."

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
