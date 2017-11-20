.class public final Lcom/google/android/maps/driveabout/b/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/ArrayList;

.field private final c:Ljava/util/ArrayList;

.field private final d:Ljava/util/ArrayList;

.field private final e:Ljava/util/ArrayList;

.field private final f:Ljava/util/ArrayList;

.field private final g:Ljava/util/ArrayList;

.field private final h:Ljava/util/ArrayList;

.field private final i:Ljava/util/ArrayList;

.field private final j:Ljava/util/ArrayList;

.field private final k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/m;->b:Ljava/util/ArrayList;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/m;->c:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/m;->d:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/m;->e:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/m;->f:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/m;->g:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/m;->h:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/m;->i:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/b/m;->j:Ljava/util/ArrayList;

    .line 122
    iput-object p1, p0, Lcom/google/android/maps/driveabout/b/m;->a:Landroid/content/Context;

    .line 124
    sget v0, Lcom/google/glass/navlib/R$string;->da_distance_format_mode:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 125
    const-string v1, "imperial"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/maps/driveabout/b/m;->k:I

    .line 132
    :goto_0
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/b/m;->a()V

    .line 133
    return-void

    .line 127
    :cond_0
    const-string v1, "imperial_yards"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/maps/driveabout/b/m;->k:I

    goto :goto_0

    .line 130
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/b/m;->k:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/b/m;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/m;->a:Landroid/content/Context;

    return-object v0
.end method

.method private static a(Ljava/util/ArrayList;ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 333
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/b/o;

    .line 334
    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/b/o;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 335
    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/b/o;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 342
    :goto_0
    return-object v0

    .line 339
    :cond_1
    invoke-static {}, Lcom/google/android/maps/driveabout/a;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 340
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x23

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Cannot format distance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method private a()V
    .locals 13

    .prologue
    .line 145
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/util/ArrayList;

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/m;->b:Ljava/util/ArrayList;

    aput-object v2, v1, v0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/m;->c:Ljava/util/ArrayList;

    aput-object v2, v1, v0

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/m;->d:Ljava/util/ArrayList;

    aput-object v2, v1, v0

    .line 150
    const/4 v0, 0x3

    new-array v2, v0, [I

    const/4 v0, 0x0

    sget v3, Lcom/google/glass/navlib/R$string;->da_speech_in_x_meters:I

    aput v3, v2, v0

    const/4 v0, 0x1

    sget v3, Lcom/google/glass/navlib/R$string;->da_speech_continue_for_x_meters:I

    aput v3, v2, v0

    const/4 v0, 0x2

    sget v3, Lcom/google/glass/navlib/R$string;->da_speech_continue_on_road_for_x_meters:I

    aput v3, v2, v0

    .line 155
    const/4 v0, 0x3

    new-array v3, v0, [I

    const/4 v0, 0x0

    sget v4, Lcom/google/glass/navlib/R$plurals;->da_speech_in_x_kilometers:I

    aput v4, v3, v0

    const/4 v0, 0x1

    sget v4, Lcom/google/glass/navlib/R$plurals;->da_speech_continue_for_x_kilometers:I

    aput v4, v3, v0

    const/4 v0, 0x2

    sget v4, Lcom/google/glass/navlib/R$plurals;->da_speech_continue_on_road_for_x_kilometers:I

    aput v4, v3, v0

    .line 160
    const/4 v0, 0x3

    new-array v4, v0, [I

    const/4 v0, 0x0

    sget v5, Lcom/google/glass/navlib/R$string;->da_speech_in_one_and_a_half_kilometers:I

    aput v5, v4, v0

    const/4 v0, 0x1

    sget v5, Lcom/google/glass/navlib/R$string;->da_speech_continue_for_one_and_a_half_kilometers:I

    aput v5, v4, v0

    const/4 v0, 0x2

    sget v5, Lcom/google/glass/navlib/R$string;->da_speech_continue_on_road_for_one_and_a_half_kilometers:I

    aput v5, v4, v0

    .line 165
    const/4 v0, 0x0

    :goto_0
    array-length v5, v1

    if-ge v0, v5, :cond_0

    .line 168
    aget-object v5, v1, v0

    new-instance v6, Lcom/google/android/maps/driveabout/b/n;

    const/16 v7, 0x5f

    aget v8, v2, v0

    const-string v9, "50"

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;IILjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    aget-object v5, v1, v0

    new-instance v6, Lcom/google/android/maps/driveabout/b/n;

    const/16 v7, 0x91

    aget v8, v2, v0

    const-string v9, "100"

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;IILjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    aget-object v5, v1, v0

    new-instance v6, Lcom/google/android/maps/driveabout/b/n;

    const/16 v7, 0xbe

    aget v8, v2, v0

    const-string v9, "150"

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;IILjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    aget-object v5, v1, v0

    new-instance v6, Lcom/google/android/maps/driveabout/b/n;

    const/16 v7, 0x118

    aget v8, v2, v0

    const-string v9, "200"

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;IILjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    aget-object v5, v1, v0

    new-instance v6, Lcom/google/android/maps/driveabout/b/n;

    const/16 v7, 0x172

    aget v8, v2, v0

    const-string v9, "300"

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;IILjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    aget-object v5, v1, v0

    new-instance v6, Lcom/google/android/maps/driveabout/b/n;

    const/16 v7, 0x1cc

    aget v8, v2, v0

    const-string v9, "400"

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;IILjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    aget-object v5, v1, v0

    new-instance v6, Lcom/google/android/maps/driveabout/b/n;

    const/16 v7, 0x226

    aget v8, v2, v0

    const-string v9, "500"

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;IILjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    aget-object v5, v1, v0

    new-instance v6, Lcom/google/android/maps/driveabout/b/n;

    const/16 v7, 0x2ee

    aget v8, v2, v0

    const-string v9, "600"

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;IILjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    aget-object v5, v1, v0

    new-instance v6, Lcom/google/android/maps/driveabout/b/n;

    const/16 v7, 0x3b6

    aget v8, v2, v0

    const-string v9, "800"

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;IILjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    aget-object v5, v1, v0

    new-instance v6, Lcom/google/android/maps/driveabout/b/p;

    const/16 v7, 0x514

    aget v8, v3, v0

    const/high16 v9, 0x447a0000    # 1000.0f

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/google/android/maps/driveabout/b/p;-><init>(Lcom/google/android/maps/driveabout/b/m;IIF)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    aget-object v5, v1, v0

    new-instance v6, Lcom/google/android/maps/driveabout/b/n;

    const/16 v7, 0x73a

    aget v8, v4, v0

    const/4 v9, 0x0

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;IILjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    aget-object v5, v1, v0

    new-instance v6, Lcom/google/android/maps/driveabout/b/p;

    const v7, 0x7fffffff

    aget v8, v3, v0

    const/high16 v9, 0x447a0000    # 1000.0f

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/google/android/maps/driveabout/b/p;-><init>(Lcom/google/android/maps/driveabout/b/m;IIF)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 186
    :cond_0
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/util/ArrayList;

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/m;->e:Ljava/util/ArrayList;

    aput-object v2, v1, v0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/m;->f:Ljava/util/ArrayList;

    aput-object v2, v1, v0

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/m;->g:Ljava/util/ArrayList;

    aput-object v2, v1, v0

    .line 193
    const/4 v0, 0x3

    new-array v2, v0, [I

    const/4 v0, 0x0

    sget v3, Lcom/google/glass/navlib/R$string;->da_speech_in_x_feet:I

    aput v3, v2, v0

    const/4 v0, 0x1

    sget v3, Lcom/google/glass/navlib/R$string;->da_speech_continue_for_x_feet:I

    aput v3, v2, v0

    const/4 v0, 0x2

    sget v3, Lcom/google/glass/navlib/R$string;->da_speech_continue_on_road_for_x_feet:I

    aput v3, v2, v0

    .line 198
    const/4 v0, 0x3

    new-array v3, v0, [I

    const/4 v0, 0x0

    sget v4, Lcom/google/glass/navlib/R$plurals;->da_speech_in_x_miles:I

    aput v4, v3, v0

    const/4 v0, 0x1

    sget v4, Lcom/google/glass/navlib/R$plurals;->da_speech_continue_for_x_miles:I

    aput v4, v3, v0

    const/4 v0, 0x2

    sget v4, Lcom/google/glass/navlib/R$plurals;->da_speech_continue_on_road_for_x_miles:I

    aput v4, v3, v0

    .line 203
    const/4 v0, 0x3

    new-array v4, v0, [I

    const/4 v0, 0x0

    sget v5, Lcom/google/glass/navlib/R$string;->da_speech_in_a_quarter_mile:I

    aput v5, v4, v0

    const/4 v0, 0x1

    sget v5, Lcom/google/glass/navlib/R$string;->da_speech_continue_for_a_quarter_mile:I

    aput v5, v4, v0

    const/4 v0, 0x2

    sget v5, Lcom/google/glass/navlib/R$string;->da_speech_continue_on_road_for_a_quarter_mile:I

    aput v5, v4, v0

    .line 208
    const/4 v0, 0x3

    new-array v5, v0, [I

    const/4 v0, 0x0

    sget v6, Lcom/google/glass/navlib/R$string;->da_speech_in_a_half_mile:I

    aput v6, v5, v0

    const/4 v0, 0x1

    sget v6, Lcom/google/glass/navlib/R$string;->da_speech_continue_for_a_half_mile:I

    aput v6, v5, v0

    const/4 v0, 0x2

    sget v6, Lcom/google/glass/navlib/R$string;->da_speech_continue_on_road_for_a_half_mile:I

    aput v6, v5, v0

    .line 213
    const/4 v0, 0x3

    new-array v6, v0, [I

    const/4 v0, 0x0

    sget v7, Lcom/google/glass/navlib/R$string;->da_speech_in_three_quarters_of_a_mile:I

    aput v7, v6, v0

    const/4 v0, 0x1

    sget v7, Lcom/google/glass/navlib/R$string;->da_speech_continue_for_three_quarters_of_a_mile:I

    aput v7, v6, v0

    const/4 v0, 0x2

    sget v7, Lcom/google/glass/navlib/R$string;->da_speech_continue_on_road_for_three_quarters_of_a_mile:I

    aput v7, v6, v0

    .line 218
    const/4 v0, 0x3

    new-array v7, v0, [I

    const/4 v0, 0x0

    sget v8, Lcom/google/glass/navlib/R$string;->da_speech_in_one_and_a_half_miles:I

    aput v8, v7, v0

    const/4 v0, 0x1

    sget v8, Lcom/google/glass/navlib/R$string;->da_speech_continue_for_one_and_a_half_miles:I

    aput v8, v7, v0

    const/4 v0, 0x2

    sget v8, Lcom/google/glass/navlib/R$string;->da_speech_continue_on_road_for_one_and_a_half_miles:I

    aput v8, v7, v0

    .line 223
    const/4 v0, 0x0

    :goto_1
    array-length v8, v1

    if-ge v0, v8, :cond_1

    .line 224
    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/b/n;

    const v10, 0x41e7a5e4

    aget v11, v2, v0

    const-string v12, "50"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/b/n;

    const v10, 0x4230c8b4    # 44.196f

    aget v11, v2, v0

    const-string v12, "100"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/b/n;

    const v10, 0x4267a5e4

    aget v11, v2, v0

    const-string v12, "150"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/b/n;

    const v10, 0x42aab021

    aget v11, v2, v0

    const-string v12, "200"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/b/n;

    const v10, 0x42e18d50    # 112.776f

    aget v11, v2, v0

    const-string v12, "300"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/b/n;

    const v10, 0x430c3540

    aget v11, v2, v0

    const-string v12, "400"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/b/n;

    const v10, 0x4327a3d7    # 167.64f

    aget v11, v2, v0

    const-string v12, "500"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/b/n;

    const v10, 0x43618d50

    aget v11, v2, v0

    const-string v12, "600"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/b/n;

    const v10, 0x4390c7ae    # 289.56f

    aget v11, v2, v0

    const-string v12, "800"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/b/n;

    const v10, 0x43c61eb8    # 396.24f

    aget v11, v2, v0

    const-string v12, "1000"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/b/n;

    const v10, 0x44350d1b

    aget v11, v4, v0

    const/4 v12, 0x0

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/b/n;

    const v10, 0x448cd14e

    aget v11, v5, v0

    const/4 v12, 0x0

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/b/n;

    const v10, 0x44bf1c0f

    aget v11, v6, v0

    const/4 v12, 0x0

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/b/p;

    const v10, 0x4502c25b

    aget v11, v3, v0

    const v12, 0x44c92b02

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/b/p;-><init>(Lcom/google/android/maps/driveabout/b/m;FIF)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/b/n;

    const v10, 0x45350d1b

    aget v11, v7, v0

    const/4 v12, 0x0

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/b/p;

    const v10, 0x7fffffff

    aget v11, v3, v0

    const v12, 0x44c92b02

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/b/p;-><init>(Lcom/google/android/maps/driveabout/b/m;IIF)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 246
    :cond_1
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/util/ArrayList;

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/m;->h:Ljava/util/ArrayList;

    aput-object v2, v1, v0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/m;->i:Ljava/util/ArrayList;

    aput-object v2, v1, v0

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/b/m;->j:Ljava/util/ArrayList;

    aput-object v2, v1, v0

    .line 252
    const/4 v0, 0x3

    new-array v2, v0, [I

    const/4 v0, 0x0

    sget v8, Lcom/google/glass/navlib/R$string;->da_speech_in_x_yards:I

    aput v8, v2, v0

    const/4 v0, 0x1

    sget v8, Lcom/google/glass/navlib/R$string;->da_speech_continue_for_x_yards:I

    aput v8, v2, v0

    const/4 v0, 0x2

    sget v8, Lcom/google/glass/navlib/R$string;->da_speech_continue_on_road_for_x_yards:I

    aput v8, v2, v0

    .line 257
    const/4 v0, 0x0

    :goto_2
    array-length v8, v1

    if-ge v0, v8, :cond_2

    .line 258
    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/b/n;

    const v10, 0x42adbc6b

    aget v11, v2, v0

    const-string v12, "50"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/b/n;

    const v10, 0x43049688

    aget v11, v2, v0

    const-string v12, "100"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/b/n;

    const v10, 0x432dbc6b

    aget v11, v2, v0

    const-string v12, "150"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/b/n;

    const v10, 0x43800419

    aget v11, v2, v0

    const-string v12, "200"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/b/n;

    const v10, 0x43a929fc

    aget v11, v2, v0

    const-string v12, "300"

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/b/n;

    const v10, 0x44350d1b

    aget v11, v4, v0

    const/4 v12, 0x0

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/b/n;

    const v10, 0x448cd14e

    aget v11, v5, v0

    const/4 v12, 0x0

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/b/n;

    const v10, 0x44bf1c0f

    aget v11, v6, v0

    const/4 v12, 0x0

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/b/p;

    const v10, 0x4502c25b

    aget v11, v3, v0

    const v12, 0x44c92b02

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/b/p;-><init>(Lcom/google/android/maps/driveabout/b/m;FIF)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/b/n;

    const v10, 0x45350d1b

    aget v11, v7, v0

    const/4 v12, 0x0

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/b/n;-><init>(Lcom/google/android/maps/driveabout/b/m;FILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    aget-object v8, v1, v0

    new-instance v9, Lcom/google/android/maps/driveabout/b/p;

    const v10, 0x7fffffff

    aget v11, v3, v0

    const v12, 0x44c92b02

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/google/android/maps/driveabout/b/p;-><init>(Lcom/google/android/maps/driveabout/b/m;IIF)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 270
    :cond_2
    return-void
.end method


# virtual methods
.method public final a(II)Lcom/google/android/maps/driveabout/a/at;
    .locals 3

    .prologue
    .line 281
    if-nez p2, :cond_0

    .line 282
    iget p2, p0, Lcom/google/android/maps/driveabout/b/m;->k:I

    .line 285
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 293
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/m;->b:Ljava/util/ArrayList;

    .line 295
    :goto_0
    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 296
    invoke-static {v0, p1, v2}, Lcom/google/android/maps/driveabout/b/m;->a(Ljava/util/ArrayList;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/google/android/maps/driveabout/a/q;

    invoke-direct {v2, p1, p2}, Lcom/google/android/maps/driveabout/a/q;-><init>(II)V

    .line 295
    invoke-static {v1, v0, v2}, Lcom/google/android/maps/driveabout/a/at;->a(ILjava/lang/CharSequence;Lcom/google/android/maps/driveabout/a/m;)Lcom/google/android/maps/driveabout/a/at;

    move-result-object v0

    return-object v0

    .line 287
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/m;->e:Ljava/util/ArrayList;

    goto :goto_0

    .line 290
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/m;->h:Ljava/util/ArrayList;

    goto :goto_0

    .line 285
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Lcom/google/android/maps/driveabout/nav/i;II)Lcom/google/android/maps/driveabout/a/at;
    .locals 3

    .prologue
    .line 312
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/nav/i;->e()Lcom/google/android/maps/driveabout/nav/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/ah;->r()Ljava/util/List;

    move-result-object v0

    .line 313
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    move-object v1, v0

    .line 315
    :goto_0
    packed-switch p3, :pswitch_data_0

    .line 324
    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/m;->c:Ljava/util/ArrayList;

    .line 327
    :goto_1
    invoke-static {v0, p2, v1}, Lcom/google/android/maps/driveabout/b/m;->a(Ljava/util/ArrayList;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/maps/driveabout/a/s;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Lcom/google/android/maps/driveabout/a/s;-><init>(I)V

    .line 326
    invoke-static {p1, v0, v1}, Lcom/google/android/maps/driveabout/a/at;->a(Lcom/google/android/maps/driveabout/nav/i;Ljava/lang/CharSequence;Lcom/google/android/maps/driveabout/a/m;)Lcom/google/android/maps/driveabout/a/at;

    move-result-object v0

    return-object v0

    .line 313
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/nav/aj;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/nav/aj;->c()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 317
    :pswitch_0
    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/m;->f:Ljava/util/ArrayList;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/m;->g:Ljava/util/ArrayList;

    goto :goto_1

    .line 320
    :pswitch_1
    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/m;->i:Ljava/util/ArrayList;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/m;->j:Ljava/util/ArrayList;

    goto :goto_1

    .line 324
    :cond_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/b/m;->d:Ljava/util/ArrayList;

    goto :goto_1

    .line 315
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
