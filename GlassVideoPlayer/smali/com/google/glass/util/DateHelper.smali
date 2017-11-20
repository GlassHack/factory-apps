.class public Lcom/google/glass/util/DateHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MONTH_IN_MILLIS:J = 0x9c363c00L

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/DateHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    return-void
.end method

.method private static formatPlural(Landroid/content/Context;II)Ljava/lang/String;
    .locals 4

    .prologue
    .line 300
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 301
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formattedDate(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    sget v0, Lcom/google/glass/common/R$string;->date_format_pattern:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {v0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formattedTime(Landroid/content/Context;JZ)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/glass/util/DateHelper;->formattedTime(Landroid/content/Context;JZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formattedTime(Landroid/content/Context;JZZ)Ljava/lang/String;
    .locals 3

    .prologue
    .line 40
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0, v0, p3}, Lcom/google/glass/util/DateHelper;->getTimeFormatPattern(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-static {v0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    if-eqz p4, :cond_0

    .line 47
    const/16 v1, 0x31

    const v2, 0xee00

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 50
    :cond_0
    return-object v0
.end method

.method public static getRelativeTimestamp(Landroid/content/Context;J)Ljava/lang/String;
    .locals 6

    .prologue
    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    invoke-static/range {v0 .. v5}, Lcom/google/glass/util/DateHelper;->getRelativeTimestamp(Landroid/content/Context;JJZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRelativeTimestamp(Landroid/content/Context;JJZ)Ljava/lang/String;
    .locals 6

    .prologue
    .line 153
    cmp-long v0, p1, p3

    if-ltz v0, :cond_7

    .line 154
    sub-long v0, p1, p3

    .line 155
    const-wide/32 v2, 0xea60

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 156
    sget v0, Lcom/google/glass/common/R$string;->timestamp_now_future:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 290
    :goto_0
    return-object v0

    .line 159
    :cond_0
    const-wide/32 v2, 0xea60

    invoke-static {v0, v1, v2, v3}, Lcom/google/glass/util/DateHelper;->roundTimeDelta(JJ)J

    move-result-wide v0

    .line 161
    const-wide/32 v2, 0x36ee80

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 162
    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 163
    sget v1, Lcom/google/glass/common/R$plurals;->time_minutes:I

    invoke-static {p0, v1, v0}, Lcom/google/glass/util/DateHelper;->formatPlural(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 164
    sget v1, Lcom/google/glass/common/R$string;->timestamp_future:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 167
    :cond_1
    const-wide/32 v2, 0x36ee80

    invoke-static {v0, v1, v2, v3}, Lcom/google/glass/util/DateHelper;->roundTimeDelta(JJ)J

    move-result-wide v0

    .line 169
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 170
    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 171
    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 172
    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 173
    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 174
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    add-long/2addr v2, v4

    .line 176
    const-wide/32 v4, 0x112a880

    add-long/2addr v4, p3

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    cmp-long v4, p1, v4

    if-gtz v4, :cond_2

    .line 177
    const-wide/32 v2, 0x36ee80

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 178
    sget v1, Lcom/google/glass/common/R$plurals;->time_hours:I

    invoke-static {p0, v1, v0}, Lcom/google/glass/util/DateHelper;->formatPlural(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 179
    sget v1, Lcom/google/glass/common/R$string;->timestamp_future:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 182
    :cond_2
    const-wide/32 v4, 0x5265c00

    invoke-static {v0, v1, v4, v5}, Lcom/google/glass/util/DateHelper;->roundTimeDelta(JJ)J

    move-result-wide v0

    .line 186
    const-wide/32 v4, 0x5265c00

    add-long/2addr v2, v4

    cmp-long v2, p1, v2

    if-gtz v2, :cond_3

    .line 187
    sget v0, Lcom/google/glass/common/R$string;->timestamp_tomorrow:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 190
    :cond_3
    const-wide/32 v2, 0x240c8400

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    .line 193
    const-wide/16 v2, 0x2

    const-wide/32 v4, 0x5265c00

    div-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 194
    sget v1, Lcom/google/glass/common/R$plurals;->time_days:I

    invoke-static {p0, v1, v0}, Lcom/google/glass/util/DateHelper;->formatPlural(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 195
    sget v1, Lcom/google/glass/common/R$string;->timestamp_future:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 198
    :cond_4
    const-wide v2, 0x9c363c00L

    cmp-long v2, v0, v2

    if-gez v2, :cond_5

    .line 199
    const-wide/32 v2, 0x240c8400

    invoke-static {v0, v1, v2, v3}, Lcom/google/glass/util/DateHelper;->roundTimeDelta(JJ)J

    move-result-wide v0

    .line 200
    const-wide/32 v2, 0x240c8400

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 201
    sget v1, Lcom/google/glass/common/R$plurals;->time_weeks:I

    invoke-static {p0, v1, v0}, Lcom/google/glass/util/DateHelper;->formatPlural(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 202
    sget v1, Lcom/google/glass/common/R$string;->timestamp_future:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 205
    :cond_5
    const-wide v2, 0x7528ad000L

    cmp-long v2, v0, v2

    if-gez v2, :cond_6

    .line 206
    const-wide v2, 0x9c363c00L

    invoke-static {v0, v1, v2, v3}, Lcom/google/glass/util/DateHelper;->roundTimeDelta(JJ)J

    move-result-wide v0

    .line 207
    const-wide v2, 0x9c363c00L

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 208
    sget v1, Lcom/google/glass/common/R$plurals;->time_months:I

    invoke-static {p0, v1, v0}, Lcom/google/glass/util/DateHelper;->formatPlural(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 209
    sget v1, Lcom/google/glass/common/R$string;->timestamp_future:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 212
    :cond_6
    const-wide v2, 0x7528ad000L

    invoke-static {v0, v1, v2, v3}, Lcom/google/glass/util/DateHelper;->roundTimeDelta(JJ)J

    move-result-wide v0

    .line 213
    const-wide v2, 0x7528ad000L

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 214
    sget v1, Lcom/google/glass/common/R$plurals;->time_years:I

    invoke-static {p0, v1, v0}, Lcom/google/glass/util/DateHelper;->formatPlural(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 215
    sget v1, Lcom/google/glass/common/R$string;->timestamp_future:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 219
    :cond_7
    sub-long v0, p3, p1

    .line 221
    if-eqz p5, :cond_9

    .line 222
    const-wide/32 v2, 0x493e0

    cmp-long v2, v0, v2

    if-gez v2, :cond_8

    .line 223
    sget v0, Lcom/google/glass/common/R$string;->timestamp_recent:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 226
    :cond_8
    const-wide/32 v2, 0x36ee80

    cmp-long v2, v0, v2

    if-gez v2, :cond_b

    .line 227
    sget v0, Lcom/google/glass/common/R$string;->timestamp_past_hour:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 231
    :cond_9
    const-wide/32 v2, 0xea60

    cmp-long v2, v0, v2

    if-gez v2, :cond_a

    .line 232
    sget v0, Lcom/google/glass/common/R$string;->timestamp_now_past:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 235
    :cond_a
    const-wide/32 v2, 0xea60

    invoke-static {v0, v1, v2, v3}, Lcom/google/glass/util/DateHelper;->roundTimeDelta(JJ)J

    move-result-wide v0

    .line 237
    const-wide/32 v2, 0x36ee80

    cmp-long v2, v0, v2

    if-gez v2, :cond_b

    .line 238
    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 239
    sget v1, Lcom/google/glass/common/R$plurals;->time_minutes:I

    invoke-static {p0, v1, v0}, Lcom/google/glass/util/DateHelper;->formatPlural(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 240
    sget v1, Lcom/google/glass/common/R$string;->timestamp_past:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 244
    :cond_b
    const-wide/32 v2, 0x36ee80

    invoke-static {v0, v1, v2, v3}, Lcom/google/glass/util/DateHelper;->roundTimeDelta(JJ)J

    move-result-wide v0

    .line 246
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 247
    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 248
    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 249
    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 250
    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 251
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 253
    const-wide/32 v4, 0x112a880

    sub-long v4, p3, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    cmp-long v4, p1, v4

    if-ltz v4, :cond_c

    .line 254
    const-wide/32 v2, 0x36ee80

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 255
    sget v1, Lcom/google/glass/common/R$plurals;->time_hours:I

    invoke-static {p0, v1, v0}, Lcom/google/glass/util/DateHelper;->formatPlural(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 256
    sget v1, Lcom/google/glass/common/R$string;->timestamp_past:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 259
    :cond_c
    const-wide/32 v4, 0x5265c00

    invoke-static {v0, v1, v4, v5}, Lcom/google/glass/util/DateHelper;->roundTimeDelta(JJ)J

    move-result-wide v0

    .line 261
    const-wide/32 v4, 0x5265c00

    sub-long/2addr v2, v4

    cmp-long v2, p1, v2

    if-ltz v2, :cond_d

    .line 262
    sget v0, Lcom/google/glass/common/R$string;->timestamp_yesterday:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 265
    :cond_d
    const-wide/32 v2, 0x240c8400

    cmp-long v2, v0, v2

    if-gez v2, :cond_e

    .line 268
    const-wide/16 v2, 0x2

    const-wide/32 v4, 0x5265c00

    div-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 269
    sget v1, Lcom/google/glass/common/R$plurals;->time_days:I

    invoke-static {p0, v1, v0}, Lcom/google/glass/util/DateHelper;->formatPlural(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 270
    sget v1, Lcom/google/glass/common/R$string;->timestamp_past:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 273
    :cond_e
    const-wide v2, 0x9c363c00L

    cmp-long v2, v0, v2

    if-gez v2, :cond_f

    .line 274
    const-wide/32 v2, 0x240c8400

    invoke-static {v0, v1, v2, v3}, Lcom/google/glass/util/DateHelper;->roundTimeDelta(JJ)J

    move-result-wide v0

    .line 275
    const-wide/32 v2, 0x240c8400

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 276
    sget v1, Lcom/google/glass/common/R$plurals;->time_weeks:I

    invoke-static {p0, v1, v0}, Lcom/google/glass/util/DateHelper;->formatPlural(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 277
    sget v1, Lcom/google/glass/common/R$string;->timestamp_past:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 280
    :cond_f
    const-wide v2, 0x7528ad000L

    cmp-long v2, v0, v2

    if-gez v2, :cond_10

    .line 281
    const-wide v2, 0x9c363c00L

    invoke-static {v0, v1, v2, v3}, Lcom/google/glass/util/DateHelper;->roundTimeDelta(JJ)J

    move-result-wide v0

    .line 282
    const-wide v2, 0x9c363c00L

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 283
    sget v1, Lcom/google/glass/common/R$plurals;->time_months:I

    invoke-static {p0, v1, v0}, Lcom/google/glass/util/DateHelper;->formatPlural(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 284
    sget v1, Lcom/google/glass/common/R$string;->timestamp_past:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 287
    :cond_10
    const-wide v2, 0x7528ad000L

    invoke-static {v0, v1, v2, v3}, Lcom/google/glass/util/DateHelper;->roundTimeDelta(JJ)J

    move-result-wide v0

    .line 288
    const-wide v2, 0x7528ad000L

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 289
    sget v1, Lcom/google/glass/common/R$plurals;->time_years:I

    invoke-static {p0, v1, v0}, Lcom/google/glass/util/DateHelper;->formatPlural(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 290
    sget v1, Lcom/google/glass/common/R$string;->timestamp_past:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private static getTimeFormatPattern(Landroid/content/Context;ZZ)Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    if-eqz p1, :cond_0

    .line 88
    sget v0, Lcom/google/glass/common/R$string;->time_format_pattern_24h:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 93
    :goto_0
    return-object v0

    .line 90
    :cond_0
    if-eqz p2, :cond_1

    .line 91
    sget v0, Lcom/google/glass/common/R$string;->time_format_pattern_12h:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 93
    :cond_1
    sget v0, Lcom/google/glass/common/R$string;->time_format_pattern_12h_am_pm:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getVideoRecordingTimeString(J)Ljava/lang/String;
    .locals 10

    .prologue
    .line 103
    const-wide/16 v0, 0x3e8

    div-long v0, p0, v0

    .line 104
    const-wide/16 v2, 0x3c

    div-long v2, v0, v2

    .line 105
    const-wide/16 v4, 0x3c

    div-long v4, v2, v4

    .line 106
    const-wide/16 v6, 0x3c

    mul-long/2addr v6, v4

    sub-long v6, v2, v6

    .line 107
    const-wide/16 v8, 0x3c

    mul-long/2addr v2, v8

    sub-long/2addr v0, v2

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-lez v3, :cond_0

    .line 113
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 115
    const v3, 0xee01

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    :cond_0
    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-lez v3, :cond_1

    const-wide/16 v3, 0xa

    cmp-long v3, v6, v3

    if-gez v3, :cond_1

    .line 120
    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    :cond_1
    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 124
    const v3, 0xee01

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    const-wide/16 v3, 0xa

    cmp-long v3, v0, v3

    if-gez v3, :cond_2

    .line 128
    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 130
    :cond_2
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isTimeInInterval(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 313
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 314
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 317
    const/4 v3, 0x3

    :try_start_0
    invoke-static {v3}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v3

    .line 318
    invoke-virtual {v3, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 319
    const/4 v4, 0x3

    const/4 v5, 0x3

    invoke-static {v4, v5}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v4

    .line 323
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 326
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    aget-object v2, v2, v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 329
    invoke-virtual {v5, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 330
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/32 v6, 0x5265c00

    add-long/2addr v3, v6

    invoke-virtual {v2, v3, v4}, Ljava/util/Date;->setTime(J)V

    .line 333
    :cond_0
    invoke-virtual {p0, v5}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    .line 338
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 333
    goto :goto_0

    .line 334
    :catch_0
    move-exception v0

    .line 335
    sget-object v2, Lcom/google/glass/util/DateHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Error parsing time interval"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    move v0, v1

    .line 338
    goto :goto_0
.end method

.method private static roundTimeDelta(JJ)J
    .locals 4

    .prologue
    .line 147
    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x2

    div-long v2, p2, v2

    add-long/2addr v2, p0

    div-long/2addr v2, p2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    mul-long/2addr v0, p2

    return-wide v0
.end method
