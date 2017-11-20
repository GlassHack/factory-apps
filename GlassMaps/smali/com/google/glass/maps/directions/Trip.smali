.class public Lcom/google/glass/maps/directions/Trip;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/nav/DataType;


# static fields
.field static final EXPANDED_SEPARATOR:Ljava/lang/String; = " > "

.field static final IMAGE_PLACEHOLDER:Ljava/lang/String; = " "

.field static final MAX_EXPANDED_STEPS:I = 0x5

.field static final SHORT_SEPARATOR:Ljava/lang/String; = ">"

.field private static final TAG:Ljava/lang/String;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field public final destination:Lcom/google/android/maps/driveabout/nav/ao;

.field public final polyline:Lcom/google/android/maps/driveabout/model/ag;

.field private recommendedDistanceUnits:I

.field private schematicSegments:[Lcom/google/glass/maps/SchematicSegment;

.field private separator:Ljava/lang/String;

.field public final steps:[Lcom/google/glass/maps/directions/Step;

.field private walkIcon:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/google/glass/maps/directions/Trip;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/directions/Trip;->TAG:Ljava/lang/String;

    .line 32
    sget-object v0, Lcom/google/glass/maps/directions/Trip;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/directions/Trip;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/nav/ao;[Lcom/google/glass/maps/directions/Step;Ljava/util/ArrayList;I)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, " > "

    iput-object v0, p0, Lcom/google/glass/maps/directions/Trip;->separator:Ljava/lang/String;

    .line 53
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/glass/maps/directions/Trip;->recommendedDistanceUnits:I

    .line 62
    iput-object p1, p0, Lcom/google/glass/maps/directions/Trip;->destination:Lcom/google/android/maps/driveabout/nav/ao;

    .line 63
    iput-object p2, p0, Lcom/google/glass/maps/directions/Trip;->steps:[Lcom/google/glass/maps/directions/Step;

    .line 64
    if-eqz p3, :cond_0

    .line 66
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/maps/driveabout/model/m;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/maps/driveabout/model/m;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/nav/w;->a([Lcom/google/android/maps/driveabout/model/m;)Lcom/google/android/maps/driveabout/model/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/directions/Trip;->polyline:Lcom/google/android/maps/driveabout/model/ag;

    .line 72
    :goto_0
    iget-object v0, p0, Lcom/google/glass/maps/directions/Trip;->steps:[Lcom/google/glass/maps/directions/Step;

    invoke-static {v0}, Lcom/google/glass/maps/directions/Trip;->getSeparator([Lcom/google/glass/maps/directions/Step;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/directions/Trip;->separator:Ljava/lang/String;

    .line 73
    iput p4, p0, Lcom/google/glass/maps/directions/Trip;->recommendedDistanceUnits:I

    .line 74
    return-void

    .line 68
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/maps/directions/Trip;->polyline:Lcom/google/android/maps/driveabout/model/ag;

    goto :goto_0
.end method

.method public constructor <init>([Lcom/google/glass/maps/directions/Step;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    const/4 v0, 0x2

    invoke-direct {p0, v1, p1, v1, v0}, Lcom/google/glass/maps/directions/Trip;-><init>(Lcom/google/android/maps/driveabout/nav/ao;[Lcom/google/glass/maps/directions/Step;Ljava/util/ArrayList;I)V

    .line 58
    return-void
.end method

.method private appendBitmap(Lcom/google/glass/util/ParcelableImageSpannable;Landroid/graphics/Bitmap;)V
    .locals 6

    .prologue
    .line 142
    invoke-virtual {p1}, Lcom/google/glass/util/ParcelableImageSpannable;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/google/glass/maps/directions/Trip;->separator:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, " "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/glass/util/ParcelableImageSpannable;->append(Ljava/lang/CharSequence;)Lcom/google/glass/util/ParcelableImageSpannable;

    .line 149
    :goto_1
    invoke-virtual {p1}, Lcom/google/glass/util/ParcelableImageSpannable;->length()I

    move-result v3

    .line 150
    add-int/lit8 v2, v3, -0x1

    const/4 v4, 0x1

    const/16 v5, 0x21

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/util/ParcelableImageSpannable;->setImageSpan(Landroid/graphics/Bitmap;IIII)V

    .line 152
    return-void

    .line 143
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :cond_1
    const-string v0, " "

    invoke-virtual {p1, v0}, Lcom/google/glass/util/ParcelableImageSpannable;->append(Ljava/lang/CharSequence;)Lcom/google/glass/util/ParcelableImageSpannable;

    goto :goto_1
.end method

.method private appendWalkIcon(Landroid/content/Context;Lcom/google/glass/util/ParcelableImageSpannable;)V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/glass/maps/directions/Trip;->walkIcon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/maps/R$drawable;->stepicon_walk:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/directions/Trip;->walkIcon:Landroid/graphics/Bitmap;

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/google/glass/maps/directions/Trip;->walkIcon:Landroid/graphics/Bitmap;

    invoke-direct {p0, p2, v0}, Lcom/google/glass/maps/directions/Trip;->appendBitmap(Lcom/google/glass/util/ParcelableImageSpannable;Landroid/graphics/Bitmap;)V

    .line 138
    return-void
.end method

.method static getSeparator([Lcom/google/glass/maps/directions/Step;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 119
    if-eqz p0, :cond_0

    array-length v1, p0

    if-nez v1, :cond_1

    .line 120
    :cond_0
    const-string v0, " > "

    .line 129
    :goto_0
    return-object v0

    .line 124
    :cond_1
    array-length v2, p0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, p0, v1

    .line 125
    iget v3, v3, Lcom/google/glass/maps/directions/Step;->stepType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 126
    add-int/lit8 v0, v0, 0x1

    .line 124
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 129
    :cond_3
    const/4 v1, 0x5

    if-gt v0, v1, :cond_4

    const-string v0, " > "

    goto :goto_0

    :cond_4
    const-string v0, ">"

    goto :goto_0
.end method


# virtual methods
.method public generateParcelableTripSummary(Landroid/content/Context;)Lcom/google/glass/util/ParcelableImageSpannable;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 91
    new-instance v3, Lcom/google/glass/util/ParcelableImageSpannable;

    invoke-direct {v3}, Lcom/google/glass/util/ParcelableImageSpannable;-><init>()V

    move v0, v1

    .line 93
    :goto_0
    iget-object v2, p0, Lcom/google/glass/maps/directions/Trip;->steps:[Lcom/google/glass/maps/directions/Step;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 94
    iget-object v2, p0, Lcom/google/glass/maps/directions/Trip;->steps:[Lcom/google/glass/maps/directions/Step;

    aget-object v4, v2, v0

    .line 95
    iget v2, v4, Lcom/google/glass/maps/directions/Step;->stepType:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    .line 98
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/glass/maps/directions/Trip;->steps:[Lcom/google/glass/maps/directions/Step;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    if-ne v0, v2, :cond_1

    .line 99
    :cond_0
    invoke-direct {p0, p1, v3}, Lcom/google/glass/maps/directions/Trip;->appendWalkIcon(Landroid/content/Context;Lcom/google/glass/util/ParcelableImageSpannable;)V

    .line 93
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_2
    iget-boolean v2, v4, Lcom/google/glass/maps/directions/Step;->showIcon:Z

    if-eqz v2, :cond_1

    .line 102
    invoke-virtual {v4}, Lcom/google/glass/maps/directions/Step;->useVehicleTypeIcon()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v4}, Lcom/google/glass/maps/directions/Step;->getVehicleTypeIconResId()I

    move-result v5

    invoke-static {v2, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 105
    :goto_2
    if-eqz v2, :cond_4

    .line 106
    invoke-direct {p0, v3, v2}, Lcom/google/glass/maps/directions/Trip;->appendBitmap(Lcom/google/glass/util/ParcelableImageSpannable;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 103
    :cond_3
    iget-wide v5, v4, Lcom/google/glass/maps/directions/Step;->iconId:J

    .line 104
    invoke-static {v5, v6}, Lcom/google/glass/maps/directions/IconsCache;->getIcon(J)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_2

    .line 108
    :cond_4
    sget-object v2, Lcom/google/glass/maps/directions/Trip;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Icon %s is can\'t be found"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-wide v7, v4, Lcom/google/glass/maps/directions/Step;->iconId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v6, v1

    invoke-interface {v2, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 113
    :cond_5
    return-object v3
.end method

.method public generateSchematicSegments()V
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 164
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 165
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v6, v7

    .line 168
    :goto_0
    iget-object v0, p0, Lcom/google/glass/maps/directions/Trip;->steps:[Lcom/google/glass/maps/directions/Step;

    array-length v0, v0

    if-ge v6, v0, :cond_4

    .line 169
    iget-object v0, p0, Lcom/google/glass/maps/directions/Trip;->steps:[Lcom/google/glass/maps/directions/Step;

    aget-object v10, v0, v6

    .line 170
    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 172
    if-nez v6, :cond_1

    .line 173
    new-instance v0, Lcom/google/glass/maps/SchematicSegment;

    sget-object v1, Lcom/google/glass/maps/SchematicSegment$Type;->START:Lcom/google/glass/maps/SchematicSegment$Type;

    iget v2, v10, Lcom/google/glass/maps/directions/Step;->lineColor:I

    .line 174
    invoke-virtual {v10}, Lcom/google/glass/maps/directions/Step;->isWalking()Z

    move-result v3

    iget-wide v4, v10, Lcom/google/glass/maps/directions/Step;->durationSecs:J

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/maps/SchematicSegment;-><init>(Lcom/google/glass/maps/SchematicSegment$Type;IZJ)V

    .line 175
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_0
    :goto_1
    new-array v0, v7, [Lcom/google/glass/maps/SchematicSegment;

    invoke-interface {v8, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/maps/SchematicSegment;

    invoke-virtual {v10, v0}, Lcom/google/glass/maps/directions/Step;->setSchematicSegments([Lcom/google/glass/maps/SchematicSegment;)V

    .line 168
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/google/glass/maps/directions/Trip;->steps:[Lcom/google/glass/maps/directions/Step;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne v6, v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/google/glass/maps/directions/Trip;->steps:[Lcom/google/glass/maps/directions/Step;

    add-int/lit8 v1, v6, -0x1

    aget-object v0, v0, v1

    iget v2, v0, Lcom/google/glass/maps/directions/Step;->lineColor:I

    .line 180
    new-instance v0, Lcom/google/glass/maps/SchematicSegment;

    sget-object v1, Lcom/google/glass/maps/SchematicSegment$Type;->END:Lcom/google/glass/maps/SchematicSegment$Type;

    .line 181
    invoke-virtual {v10}, Lcom/google/glass/maps/directions/Step;->isWalking()Z

    move-result v3

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/maps/SchematicSegment;-><init>(Lcom/google/glass/maps/SchematicSegment$Type;IZJ)V

    .line 182
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 186
    :cond_2
    new-instance v0, Lcom/google/glass/maps/SchematicSegment;

    sget-object v1, Lcom/google/glass/maps/SchematicSegment$Type;->CONTINUE:Lcom/google/glass/maps/SchematicSegment$Type;

    iget-object v2, p0, Lcom/google/glass/maps/directions/Trip;->steps:[Lcom/google/glass/maps/directions/Step;

    add-int/lit8 v3, v6, -0x1

    aget-object v2, v2, v3

    iget v2, v2, Lcom/google/glass/maps/directions/Step;->lineColor:I

    iget-object v3, p0, Lcom/google/glass/maps/directions/Trip;->steps:[Lcom/google/glass/maps/directions/Step;

    add-int/lit8 v4, v6, -0x1

    aget-object v3, v3, v4

    .line 187
    invoke-virtual {v3}, Lcom/google/glass/maps/directions/Step;->isWalking()Z

    move-result v3

    iget-wide v4, v10, Lcom/google/glass/maps/directions/Step;->durationSecs:J

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/maps/SchematicSegment;-><init>(Lcom/google/glass/maps/SchematicSegment$Type;IZJ)V

    .line 188
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    new-instance v0, Lcom/google/glass/maps/SchematicSegment;

    sget-object v1, Lcom/google/glass/maps/SchematicSegment$Type;->TRANSFER:Lcom/google/glass/maps/SchematicSegment$Type;

    iget v2, v10, Lcom/google/glass/maps/directions/Step;->lineColor:I

    .line 190
    invoke-virtual {v10}, Lcom/google/glass/maps/directions/Step;->isWalking()Z

    move-result v3

    iget-wide v4, v10, Lcom/google/glass/maps/directions/Step;->durationSecs:J

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/maps/SchematicSegment;-><init>(Lcom/google/glass/maps/SchematicSegment$Type;IZJ)V

    .line 191
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    invoke-virtual {v10}, Lcom/google/glass/maps/directions/Step;->isWalking()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v10}, Lcom/google/glass/maps/directions/Step;->isWalking()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/maps/directions/Trip;->steps:[Lcom/google/glass/maps/directions/Step;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x2

    if-ne v6, v1, :cond_0

    .line 196
    :cond_3
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 203
    :cond_4
    new-array v0, v7, [Lcom/google/glass/maps/SchematicSegment;

    invoke-interface {v9, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/maps/SchematicSegment;

    iput-object v0, p0, Lcom/google/glass/maps/directions/Trip;->schematicSegments:[Lcom/google/glass/maps/SchematicSegment;

    .line 204
    return-void
.end method

.method public generateTripSummaryStringWithIcon(Landroid/content/Context;)Landroid/text/Spanned;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lcom/google/glass/maps/directions/Trip;->generateParcelableTripSummary(Landroid/content/Context;)Lcom/google/glass/util/ParcelableImageSpannable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/util/ParcelableImageSpannable;->toSpanned(Landroid/content/Context;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public getDataType()Lcom/google/android/maps/driveabout/nav/DataType$Type;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/google/android/maps/driveabout/nav/DataType$Type;->TRIP_TYPE:Lcom/google/android/maps/driveabout/nav/DataType$Type;

    return-object v0
.end method

.method public getRecommendedDistanceUnits()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/google/glass/maps/directions/Trip;->recommendedDistanceUnits:I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/glass/maps/directions/Trip;->recommendedDistanceUnits:I

    goto :goto_0
.end method

.method public getSchematicSegments()[Lcom/google/glass/maps/SchematicSegment;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/glass/maps/directions/Trip;->schematicSegments:[Lcom/google/glass/maps/SchematicSegment;

    return-object v0
.end method
