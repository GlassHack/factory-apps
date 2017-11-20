.class public Lcom/google/glass/util/DateHelper;
.super Ljava/lang/Object;
.source "DateHelper.java"


# static fields
.field private static final MONTH_IN_MILLIS:J = 0x9c363c00L

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
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
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resource"    # I
    .param p2, "count"    # I

    .prologue
    .line 300
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 301
    .local v0, "formatString":Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formattedDate(Landroid/content/Context;J)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timestamp"    # J

    .prologue
    .line 71
    sget v1, Lcom/google/glass/common/R$string;->date_format_pattern:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "dateFormat":Ljava/lang/String;
    invoke-static {v0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formattedTime(Landroid/content/Context;JZ)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timestamp"    # J
    .param p3, "hideAmPm"    # Z

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/glass/util/DateHelper;->formattedTime(Landroid/content/Context;JZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formattedTime(Landroid/content/Context;JZZ)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timestamp"    # J
    .param p3, "hideAmPm"    # Z
    .param p4, "useProportionalOne"    # Z

    .prologue
    .line 38
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    invoke-static {p0, v2, p3}, Lcom/google/glass/util/DateHelper;->getTimeFormatPattern(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "timeFormat":Ljava/lang/String;
    invoke-static {v0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, "timeString":Ljava/lang/String;
    if-eqz p4, :cond_0

    .line 45
    const/16 v2, 0x31

    const v3, 0xee00

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 48
    :cond_0
    return-object v1
.end method

.method public static getRelativeTimestamp(Landroid/content/Context;J)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # J

    .prologue
    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    invoke-static/range {v1 .. v6}, Lcom/google/glass/util/DateHelper;->getRelativeTimestamp(Landroid/content/Context;JJZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRelativeTimestamp(Landroid/content/Context;JJZ)Ljava/lang/String;
    .locals 29
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # J
    .param p3, "currentTime"    # J
    .param p5, "summarizePastHour"    # Z

    .prologue
    .line 151
    cmp-long v23, p1, p3

    if-ltz v23, :cond_7

    .line 152
    sub-long v6, p1, p3

    .line 153
    .local v6, "delta":J
    const-wide/32 v24, 0xea60

    cmp-long v23, v6, v24

    if-gez v23, :cond_0

    .line 154
    sget v23, Lcom/google/glass/common/R$string;->timestamp_now_future:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 290
    :goto_0
    return-object v23

    .line 157
    :cond_0
    const-wide/32 v24, 0xea60

    move-wide/from16 v0, v24

    invoke-static {v6, v7, v0, v1}, Lcom/google/glass/util/DateHelper;->roundTimeDelta(JJ)J

    move-result-wide v6

    .line 159
    const-wide/32 v24, 0x36ee80

    cmp-long v23, v6, v24

    if-gez v23, :cond_1

    .line 160
    const-wide/32 v24, 0xea60

    div-long v24, v6, v24

    move-wide/from16 v0, v24

    long-to-int v11, v0

    .line 161
    .local v11, "mins":I
    sget v23, Lcom/google/glass/common/R$plurals;->time_minutes:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-static {v0, v1, v11}, Lcom/google/glass/util/DateHelper;->formatPlural(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v17

    .line 162
    .local v17, "timeInMinutes":Ljava/lang/String;
    sget v23, Lcom/google/glass/common/R$string;->timestamp_future:I

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v17, v24, v25

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    goto :goto_0

    .line 165
    .end local v11    # "mins":I
    .end local v17    # "timeInMinutes":Ljava/lang/String;
    :cond_1
    const-wide/32 v24, 0x36ee80

    move-wide/from16 v0, v24

    invoke-static {v6, v7, v0, v1}, Lcom/google/glass/util/DateHelper;->roundTimeDelta(JJ)J

    move-result-wide v6

    .line 167
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 168
    .local v10, "midnight":Ljava/util/Calendar;
    move-wide/from16 v0, p3

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 169
    const/16 v23, 0xb

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 170
    const/16 v23, 0xc

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 171
    const/16 v23, 0xd

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 172
    const/16 v23, 0xe

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 173
    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v24

    const-wide/32 v26, 0x5265c00

    add-long v14, v24, v26

    .line 175
    .local v14, "nextMidnightTime":J
    const-wide/32 v24, 0x112a880

    add-long v24, v24, p3

    move-wide/from16 v0, v24

    invoke-static {v14, v15, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v24

    cmp-long v23, p1, v24

    if-gtz v23, :cond_2

    .line 176
    const-wide/32 v24, 0x36ee80

    div-long v24, v6, v24

    move-wide/from16 v0, v24

    long-to-int v5, v0

    .line 177
    .local v5, "hours":I
    sget v23, Lcom/google/glass/common/R$plurals;->time_hours:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-static {v0, v1, v5}, Lcom/google/glass/util/DateHelper;->formatPlural(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v16

    .line 178
    .local v16, "timeInHours":Ljava/lang/String;
    sget v23, Lcom/google/glass/common/R$string;->timestamp_future:I

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v16, v24, v25

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_0

    .line 181
    .end local v5    # "hours":I
    .end local v16    # "timeInHours":Ljava/lang/String;
    :cond_2
    const-wide/32 v24, 0x5265c00

    move-wide/from16 v0, v24

    invoke-static {v6, v7, v0, v1}, Lcom/google/glass/util/DateHelper;->roundTimeDelta(JJ)J

    move-result-wide v6

    .line 185
    const-wide/32 v24, 0x5265c00

    add-long v24, v24, v14

    cmp-long v23, p1, v24

    if-gtz v23, :cond_3

    .line 186
    sget v23, Lcom/google/glass/common/R$string;->timestamp_tomorrow:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_0

    .line 189
    :cond_3
    const-wide/32 v24, 0x240c8400

    cmp-long v23, v6, v24

    if-gez v23, :cond_4

    .line 192
    const-wide/16 v24, 0x2

    const-wide/32 v26, 0x5265c00

    div-long v26, v6, v26

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v4, v0

    .line 193
    .local v4, "days":I
    sget v23, Lcom/google/glass/common/R$plurals;->time_days:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-static {v0, v1, v4}, Lcom/google/glass/util/DateHelper;->formatPlural(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v13

    .line 194
    .local v13, "timeInDays":Ljava/lang/String;
    sget v23, Lcom/google/glass/common/R$string;->timestamp_future:I

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v13, v24, v25

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_0

    .line 197
    .end local v4    # "days":I
    .end local v13    # "timeInDays":Ljava/lang/String;
    :cond_4
    const-wide v24, 0x9c363c00L

    cmp-long v23, v6, v24

    if-gez v23, :cond_5

    .line 198
    const-wide/32 v24, 0x240c8400

    move-wide/from16 v0, v24

    invoke-static {v6, v7, v0, v1}, Lcom/google/glass/util/DateHelper;->roundTimeDelta(JJ)J

    move-result-wide v6

    .line 199
    const-wide/32 v24, 0x240c8400

    div-long v24, v6, v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v21, v0

    .line 200
    .local v21, "weeks":I
    sget v23, Lcom/google/glass/common/R$plurals;->time_weeks:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/DateHelper;->formatPlural(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v19

    .line 201
    .local v19, "timeInWeeks":Ljava/lang/String;
    sget v23, Lcom/google/glass/common/R$string;->timestamp_future:I

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v19, v24, v25

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_0

    .line 204
    .end local v19    # "timeInWeeks":Ljava/lang/String;
    .end local v21    # "weeks":I
    :cond_5
    const-wide v24, 0x7528ad000L

    cmp-long v23, v6, v24

    if-gez v23, :cond_6

    .line 205
    const-wide v24, 0x9c363c00L

    move-wide/from16 v0, v24

    invoke-static {v6, v7, v0, v1}, Lcom/google/glass/util/DateHelper;->roundTimeDelta(JJ)J

    move-result-wide v6

    .line 206
    const-wide v24, 0x9c363c00L

    div-long v24, v6, v24

    move-wide/from16 v0, v24

    long-to-int v12, v0

    .line 207
    .local v12, "months":I
    sget v23, Lcom/google/glass/common/R$plurals;->time_months:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-static {v0, v1, v12}, Lcom/google/glass/util/DateHelper;->formatPlural(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v18

    .line 208
    .local v18, "timeInMonths":Ljava/lang/String;
    sget v23, Lcom/google/glass/common/R$string;->timestamp_future:I

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v18, v24, v25

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_0

    .line 211
    .end local v12    # "months":I
    .end local v18    # "timeInMonths":Ljava/lang/String;
    :cond_6
    const-wide v24, 0x7528ad000L

    move-wide/from16 v0, v24

    invoke-static {v6, v7, v0, v1}, Lcom/google/glass/util/DateHelper;->roundTimeDelta(JJ)J

    move-result-wide v6

    .line 212
    const-wide v24, 0x7528ad000L

    div-long v24, v6, v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v22, v0

    .line 213
    .local v22, "years":I
    sget v23, Lcom/google/glass/common/R$plurals;->time_years:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/DateHelper;->formatPlural(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v20

    .line 214
    .local v20, "timeInYears":Ljava/lang/String;
    sget v23, Lcom/google/glass/common/R$string;->timestamp_future:I

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v20, v24, v25

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_0

    .line 218
    .end local v6    # "delta":J
    .end local v10    # "midnight":Ljava/util/Calendar;
    .end local v14    # "nextMidnightTime":J
    .end local v20    # "timeInYears":Ljava/lang/String;
    .end local v22    # "years":I
    :cond_7
    sub-long v6, p3, p1

    .line 220
    .restart local v6    # "delta":J
    if-eqz p5, :cond_9

    .line 221
    const-wide/32 v24, 0x493e0

    cmp-long v23, v6, v24

    if-gez v23, :cond_8

    .line 222
    sget v23, Lcom/google/glass/common/R$string;->timestamp_recent:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_0

    .line 225
    :cond_8
    const-wide/32 v24, 0x36ee80

    cmp-long v23, v6, v24

    if-gez v23, :cond_b

    .line 226
    sget v23, Lcom/google/glass/common/R$string;->timestamp_past_hour:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_0

    .line 230
    :cond_9
    const-wide/32 v24, 0xea60

    cmp-long v23, v6, v24

    if-gez v23, :cond_a

    .line 231
    sget v23, Lcom/google/glass/common/R$string;->timestamp_now_past:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_0

    .line 234
    :cond_a
    const-wide/32 v24, 0xea60

    move-wide/from16 v0, v24

    invoke-static {v6, v7, v0, v1}, Lcom/google/glass/util/DateHelper;->roundTimeDelta(JJ)J

    move-result-wide v6

    .line 236
    const-wide/32 v24, 0x36ee80

    cmp-long v23, v6, v24

    if-gez v23, :cond_b

    .line 237
    const-wide/32 v24, 0xea60

    div-long v24, v6, v24

    move-wide/from16 v0, v24

    long-to-int v11, v0

    .line 238
    .restart local v11    # "mins":I
    sget v23, Lcom/google/glass/common/R$plurals;->time_minutes:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-static {v0, v1, v11}, Lcom/google/glass/util/DateHelper;->formatPlural(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v17

    .line 239
    .restart local v17    # "timeInMinutes":Ljava/lang/String;
    sget v23, Lcom/google/glass/common/R$string;->timestamp_past:I

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v17, v24, v25

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_0

    .line 243
    .end local v11    # "mins":I
    .end local v17    # "timeInMinutes":Ljava/lang/String;
    :cond_b
    const-wide/32 v24, 0x36ee80

    move-wide/from16 v0, v24

    invoke-static {v6, v7, v0, v1}, Lcom/google/glass/util/DateHelper;->roundTimeDelta(JJ)J

    move-result-wide v6

    .line 245
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 246
    .restart local v10    # "midnight":Ljava/util/Calendar;
    move-wide/from16 v0, p3

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 247
    const/16 v23, 0xb

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 248
    const/16 v23, 0xc

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 249
    const/16 v23, 0xd

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 250
    const/16 v23, 0xe

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 251
    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 253
    .local v8, "lastMidnightTime":J
    const-wide/32 v24, 0x112a880

    sub-long v24, p3, v24

    move-wide/from16 v0, v24

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v24

    cmp-long v23, p1, v24

    if-ltz v23, :cond_c

    .line 254
    const-wide/32 v24, 0x36ee80

    div-long v24, v6, v24

    move-wide/from16 v0, v24

    long-to-int v5, v0

    .line 255
    .restart local v5    # "hours":I
    sget v23, Lcom/google/glass/common/R$plurals;->time_hours:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-static {v0, v1, v5}, Lcom/google/glass/util/DateHelper;->formatPlural(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v16

    .line 256
    .restart local v16    # "timeInHours":Ljava/lang/String;
    sget v23, Lcom/google/glass/common/R$string;->timestamp_past:I

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v16, v24, v25

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_0

    .line 259
    .end local v5    # "hours":I
    .end local v16    # "timeInHours":Ljava/lang/String;
    :cond_c
    const-wide/32 v24, 0x5265c00

    move-wide/from16 v0, v24

    invoke-static {v6, v7, v0, v1}, Lcom/google/glass/util/DateHelper;->roundTimeDelta(JJ)J

    move-result-wide v6

    .line 261
    const-wide/32 v24, 0x5265c00

    sub-long v24, v8, v24

    cmp-long v23, p1, v24

    if-ltz v23, :cond_d

    .line 262
    sget v23, Lcom/google/glass/common/R$string;->timestamp_yesterday:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_0

    .line 265
    :cond_d
    const-wide/32 v24, 0x240c8400

    cmp-long v23, v6, v24

    if-gez v23, :cond_e

    .line 268
    const-wide/16 v24, 0x2

    const-wide/32 v26, 0x5265c00

    div-long v26, v6, v26

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v4, v0

    .line 269
    .restart local v4    # "days":I
    sget v23, Lcom/google/glass/common/R$plurals;->time_days:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-static {v0, v1, v4}, Lcom/google/glass/util/DateHelper;->formatPlural(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v13

    .line 270
    .restart local v13    # "timeInDays":Ljava/lang/String;
    sget v23, Lcom/google/glass/common/R$string;->timestamp_past:I

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v13, v24, v25

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_0

    .line 273
    .end local v4    # "days":I
    .end local v13    # "timeInDays":Ljava/lang/String;
    :cond_e
    const-wide v24, 0x9c363c00L

    cmp-long v23, v6, v24

    if-gez v23, :cond_f

    .line 274
    const-wide/32 v24, 0x240c8400

    move-wide/from16 v0, v24

    invoke-static {v6, v7, v0, v1}, Lcom/google/glass/util/DateHelper;->roundTimeDelta(JJ)J

    move-result-wide v6

    .line 275
    const-wide/32 v24, 0x240c8400

    div-long v24, v6, v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v21, v0

    .line 276
    .restart local v21    # "weeks":I
    sget v23, Lcom/google/glass/common/R$plurals;->time_weeks:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/DateHelper;->formatPlural(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v19

    .line 277
    .restart local v19    # "timeInWeeks":Ljava/lang/String;
    sget v23, Lcom/google/glass/common/R$string;->timestamp_past:I

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v19, v24, v25

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_0

    .line 280
    .end local v19    # "timeInWeeks":Ljava/lang/String;
    .end local v21    # "weeks":I
    :cond_f
    const-wide v24, 0x7528ad000L

    cmp-long v23, v6, v24

    if-gez v23, :cond_10

    .line 281
    const-wide v24, 0x9c363c00L

    move-wide/from16 v0, v24

    invoke-static {v6, v7, v0, v1}, Lcom/google/glass/util/DateHelper;->roundTimeDelta(JJ)J

    move-result-wide v6

    .line 282
    const-wide v24, 0x9c363c00L

    div-long v24, v6, v24

    move-wide/from16 v0, v24

    long-to-int v12, v0

    .line 283
    .restart local v12    # "months":I
    sget v23, Lcom/google/glass/common/R$plurals;->time_months:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-static {v0, v1, v12}, Lcom/google/glass/util/DateHelper;->formatPlural(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v18

    .line 284
    .restart local v18    # "timeInMonths":Ljava/lang/String;
    sget v23, Lcom/google/glass/common/R$string;->timestamp_past:I

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v18, v24, v25

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_0

    .line 287
    .end local v12    # "months":I
    .end local v18    # "timeInMonths":Ljava/lang/String;
    :cond_10
    const-wide v24, 0x7528ad000L

    move-wide/from16 v0, v24

    invoke-static {v6, v7, v0, v1}, Lcom/google/glass/util/DateHelper;->roundTimeDelta(JJ)J

    move-result-wide v6

    .line 288
    const-wide v24, 0x7528ad000L

    div-long v24, v6, v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v22, v0

    .line 289
    .restart local v22    # "years":I
    sget v23, Lcom/google/glass/common/R$plurals;->time_years:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/DateHelper;->formatPlural(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v20

    .line 290
    .restart local v20    # "timeInYears":Ljava/lang/String;
    sget v23, Lcom/google/glass/common/R$string;->timestamp_past:I

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v20, v24, v25

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_0
.end method

.method private static getTimeFormatPattern(Landroid/content/Context;ZZ)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "is24HourFormat"    # Z
    .param p2, "hideAmPm"    # Z

    .prologue
    .line 85
    if-eqz p1, :cond_0

    .line 86
    sget v0, Lcom/google/glass/common/R$string;->time_format_pattern_24h:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 91
    :goto_0
    return-object v0

    .line 88
    :cond_0
    if-eqz p2, :cond_1

    .line 89
    sget v0, Lcom/google/glass/common/R$string;->time_format_pattern_12h:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 91
    :cond_1
    sget v0, Lcom/google/glass/common/R$string;->time_format_pattern_12h_am_pm:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getVideoRecordingTimeString(J)Ljava/lang/String;
    .locals 14
    .param p0, "elapsedTimeMs"    # J

    .prologue
    .line 101
    const-wide/16 v12, 0x3e8

    div-long v8, p0, v12

    .line 102
    .local v8, "seconds":J
    const-wide/16 v12, 0x3c

    div-long v2, v8, v12

    .line 103
    .local v2, "minutes":J
    const-wide/16 v12, 0x3c

    div-long v0, v2, v12

    .line 104
    .local v0, "hours":J
    const-wide/16 v12, 0x3c

    mul-long/2addr v12, v0

    sub-long v4, v2, v12

    .line 105
    .local v4, "remainderMinutes":J
    const-wide/16 v12, 0x3c

    mul-long/2addr v12, v2

    sub-long v6, v8, v12

    .line 107
    .local v6, "remainderSeconds":J
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .local v10, "timeStringBuilder":Ljava/lang/StringBuilder;
    const-wide/16 v12, 0x0

    cmp-long v11, v0, v12

    if-lez v11, :cond_0

    .line 111
    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 113
    const v11, 0xee01

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    :cond_0
    const-wide/16 v12, 0x0

    cmp-long v11, v0, v12

    if-lez v11, :cond_1

    const-wide/16 v12, 0xa

    cmp-long v11, v4, v12

    if-gez v11, :cond_1

    .line 118
    const/16 v11, 0x30

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 120
    :cond_1
    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 122
    const v11, 0xee01

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 125
    const-wide/16 v12, 0xa

    cmp-long v11, v6, v12

    if-gez v11, :cond_2

    .line 126
    const/16 v11, 0x30

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    :cond_2
    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    return-object v11
.end method

.method public static isTimeInInterval(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p0, "time"    # Ljava/util/Date;
    .param p1, "interval"    # Ljava/lang/String;
    .param p2, "delimiter"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 313
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 314
    .local v4, "startEnd":[Ljava/lang/String;
    array-length v8, v4

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    .line 317
    const/4 v8, 0x3

    :try_start_0
    invoke-static {v8}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v8

    .line 318
    invoke-virtual {v8, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 319
    .local v2, "format":Ljava/lang/String;
    const/4 v8, 0x3

    const/4 v9, 0x3

    invoke-static {v8, v9}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v3

    .line 323
    .local v3, "formatter":Ljava/text/DateFormat;
    const/4 v8, 0x0

    aget-object v8, v4, v8

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 326
    .local v5, "startTime":Ljava/util/Date;
    const/4 v8, 0x1

    aget-object v8, v4, v8

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 329
    .local v1, "endTime":Ljava/util/Date;
    invoke-virtual {v5, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 330
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    const-wide/32 v10, 0x5265c00

    add-long/2addr v8, v10

    invoke-virtual {v1, v8, v9}, Ljava/util/Date;->setTime(J)V

    .line 333
    :cond_0
    invoke-virtual {p0, v5}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_1

    .line 338
    .end local v1    # "endTime":Ljava/util/Date;
    .end local v2    # "format":Ljava/lang/String;
    .end local v3    # "formatter":Ljava/text/DateFormat;
    .end local v5    # "startTime":Ljava/util/Date;
    :goto_0
    return v6

    .restart local v1    # "endTime":Ljava/util/Date;
    .restart local v2    # "format":Ljava/lang/String;
    .restart local v3    # "formatter":Ljava/text/DateFormat;
    .restart local v5    # "startTime":Ljava/util/Date;
    :cond_1
    move v6, v7

    .line 333
    goto :goto_0

    .line 334
    .end local v1    # "endTime":Ljava/util/Date;
    .end local v2    # "format":Ljava/lang/String;
    .end local v3    # "formatter":Ljava/text/DateFormat;
    .end local v5    # "startTime":Ljava/util/Date;
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Ljava/text/ParseException;
    sget-object v6, Lcom/google/glass/util/DateHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Error parsing time interval"

    new-array v9, v7, [Ljava/lang/Object;

    invoke-interface {v6, v0, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .end local v0    # "e":Ljava/text/ParseException;
    :cond_2
    move v6, v7

    .line 338
    goto :goto_0
.end method

.method private static roundTimeDelta(JJ)J
    .locals 4
    .param p0, "delta"    # J
    .param p2, "precision"    # J

    .prologue
    .line 145
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
