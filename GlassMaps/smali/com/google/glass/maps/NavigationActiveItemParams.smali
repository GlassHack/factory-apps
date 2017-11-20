.class public final Lcom/google/glass/maps/NavigationActiveItemParams;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final KEY_CARD_TYPE:Ljava/lang/String; = "card_type"

.field private static final KEY_DESTINATION_NAME:Ljava/lang/String; = "destination_name"

.field private static final KEY_ICON_URI:Ljava/lang/String; = "icon_uri"

.field private static final KEY_MESSAGE:Ljava/lang/String; = "message"

.field private static final KEY_SCHEMATIC_SEGMENTS:Ljava/lang/String; = "schematic_segments"

.field private static final KEY_TIME:Ljava/lang/String; = "time"

.field private static final KEY_TRIP_SUMMARY:Ljava/lang/String; = "summary_icons"


# instance fields
.field private final bundle:Landroid/os/Bundle;


# direct methods
.method private constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-class v0, Lcom/google/glass/util/ParcelableImageSpannable;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 55
    iput-object p1, p0, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/google/glass/maps/NavigationActiveItemParams$CardType;)V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/glass/maps/NavigationActiveItemParams;-><init>(Landroid/os/Bundle;)V

    .line 47
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    const-string v1, "card_type"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 48
    return-void
.end method

.method private areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 178
    if-eq p1, p2, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static fromBundle(Landroid/os/Bundle;)Lcom/google/glass/maps/NavigationActiveItemParams;
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/google/glass/maps/NavigationActiveItemParams;

    if-eqz p0, :cond_0

    :goto_0
    invoke-direct {v0, p0}, Lcom/google/glass/maps/NavigationActiveItemParams;-><init>(Landroid/os/Bundle;)V

    return-object v0

    :cond_0
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 159
    if-ne p0, p1, :cond_0

    move v0, v1

    .line 174
    :goto_0
    return v0

    .line 162
    :cond_0
    instance-of v0, p1, Lcom/google/glass/maps/NavigationActiveItemParams;

    if-nez v0, :cond_1

    move v0, v2

    .line 163
    goto :goto_0

    .line 165
    :cond_1
    check-cast p1, Lcom/google/glass/maps/NavigationActiveItemParams;

    .line 166
    iget-object v0, p1, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v3, p0, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    .line 167
    goto :goto_0

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 170
    iget-object v4, p1, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/google/glass/maps/NavigationActiveItemParams;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    .line 171
    goto :goto_0

    :cond_4
    move v0, v1

    .line 174
    goto :goto_0
.end method

.method public final getCardType()Lcom/google/glass/maps/NavigationActiveItemParams$CardType;
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    const-string v1, "card_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/NavigationActiveItemParams$CardType;

    return-object v0
.end method

.method public final getDestinationName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    const-string v1, "destination_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getIconUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    const-string v1, "icon_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSchematicSegments()[Lcom/google/glass/maps/SchematicSegment;
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    const-string v1, "schematic_segments"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    const-string v1, "schematic_segments"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 137
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/glass/maps/SchematicSegment;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/maps/SchematicSegment;

    .line 139
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getTimeString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    const-string v1, "time"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTripSummary(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    const-string v1, "summary_icons"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/ParcelableImageSpannable;

    .line 120
    if-nez v0, :cond_0

    .line 121
    const/4 v0, 0x0

    .line 123
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/glass/util/ParcelableImageSpannable;->toSpanned(Landroid/content/Context;)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 148
    const/4 v0, 0x1

    .line 149
    iget-object v1, p0, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 150
    iget-object v3, p0, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 151
    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    .line 152
    mul-int/lit8 v1, v0, 0x1f

    if-nez v3, :cond_0

    const/4 v0, 0x0

    :goto_1
    add-int/2addr v0, v1

    move v1, v0

    .line 153
    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    .line 154
    :cond_1
    return v1
.end method

.method public final setCardType(Lcom/google/glass/maps/NavigationActiveItemParams$CardType;)V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    const-string v1, "card_type"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 63
    return-void
.end method

.method public final setDestinationName(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 93
    if-eqz p1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    const-string v1, "destination_name"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_0
    return-void
.end method

.method public final setIconUri(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 83
    if-eqz p1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    const-string v1, "icon_uri"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_0
    return-void
.end method

.method public final setMessage(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 73
    if-eqz p1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_0
    return-void
.end method

.method public final setSchematicSegments([Lcom/google/glass/maps/SchematicSegment;)V
    .locals 3

    .prologue
    .line 127
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 130
    iget-object v1, p0, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    const-string v2, "schematic_segments"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 132
    :cond_0
    return-void
.end method

.method public final setTimeString(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 103
    if-eqz p1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    const-string v1, "time"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_0
    return-void
.end method

.method public final setTripSummary(Lcom/google/glass/util/ParcelableImageSpannable;)V
    .locals 2

    .prologue
    .line 113
    if-eqz p1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    const-string v1, "summary_icons"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 116
    :cond_0
    return-void
.end method

.method public final toBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/glass/maps/NavigationActiveItemParams;->bundle:Landroid/os/Bundle;

    return-object v0
.end method
