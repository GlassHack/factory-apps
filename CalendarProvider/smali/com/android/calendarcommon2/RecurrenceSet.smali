.class public Lcom/android/calendarcommon2/RecurrenceSet;
.super Ljava/lang/Object;
.source "RecurrenceSet.java"


# static fields
.field private static final FOLD_RE:Ljava/util/regex/Pattern;

.field private static final IGNORABLE_ICAL_WHITESPACE_RE:Ljava/util/regex/Pattern;


# instance fields
.field public exdates:[J

.field public exrules:[Lcom/android/calendarcommon2/EventRecurrence;

.field public rdates:[J

.field public rrules:[Lcom/android/calendarcommon2/EventRecurrence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 412
    const-string v0, "(?:\\r\\n?|\\n)[ \t]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/calendarcommon2/RecurrenceSet;->IGNORABLE_ICAL_WHITESPACE_RE:Ljava/util/regex/Pattern;

    .line 415
    const-string v0, ".{75}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/calendarcommon2/RecurrenceSet;->FOLD_RE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentValues;)V
    .locals 5
    .param p1, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendarcommon2/EventRecurrence$InvalidFormatException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v4, p0, Lcom/android/calendarcommon2/RecurrenceSet;->rrules:[Lcom/android/calendarcommon2/EventRecurrence;

    .line 44
    iput-object v4, p0, Lcom/android/calendarcommon2/RecurrenceSet;->rdates:[J

    .line 45
    iput-object v4, p0, Lcom/android/calendarcommon2/RecurrenceSet;->exrules:[Lcom/android/calendarcommon2/EventRecurrence;

    .line 46
    iput-object v4, p0, Lcom/android/calendarcommon2/RecurrenceSet;->exdates:[J

    .line 55
    const-string v4, "rrule"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, "rruleStr":Ljava/lang/String;
    const-string v4, "rdate"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "rdateStr":Ljava/lang/String;
    const-string v4, "exrule"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "exruleStr":Ljava/lang/String;
    const-string v4, "exdate"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "exdateStr":Ljava/lang/String;
    invoke-direct {p0, v3, v2, v1, v0}, Lcom/android/calendarcommon2/RecurrenceSet;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "rruleStr"    # Ljava/lang/String;
    .param p2, "rdateStr"    # Ljava/lang/String;
    .param p3, "exruleStr"    # Ljava/lang/String;
    .param p4, "exdateStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendarcommon2/EventRecurrence$InvalidFormatException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/android/calendarcommon2/RecurrenceSet;->rrules:[Lcom/android/calendarcommon2/EventRecurrence;

    .line 44
    iput-object v0, p0, Lcom/android/calendarcommon2/RecurrenceSet;->rdates:[J

    .line 45
    iput-object v0, p0, Lcom/android/calendarcommon2/RecurrenceSet;->exrules:[Lcom/android/calendarcommon2/EventRecurrence;

    .line 46
    iput-object v0, p0, Lcom/android/calendarcommon2/RecurrenceSet;->exdates:[J

    .line 87
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/calendarcommon2/RecurrenceSet;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 23
    .param p1, "rruleStr"    # Ljava/lang/String;
    .param p2, "rdateStr"    # Ljava/lang/String;
    .param p3, "exruleStr"    # Ljava/lang/String;
    .param p4, "exdateStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendarcommon2/EventRecurrence$InvalidFormatException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 95
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 96
    const-string v19, "\n"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 97
    .local v18, "rruleStrs":[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v0, v0, [Lcom/android/calendarcommon2/EventRecurrence;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendarcommon2/RecurrenceSet;->rrules:[Lcom/android/calendarcommon2/EventRecurrence;

    .line 98
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v10, v0, :cond_1

    .line 99
    new-instance v17, Lcom/android/calendarcommon2/EventRecurrence;

    invoke-direct/range {v17 .. v17}, Lcom/android/calendarcommon2/EventRecurrence;-><init>()V

    .line 100
    .local v17, "rrule":Lcom/android/calendarcommon2/EventRecurrence;
    aget-object v19, v18, v10

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/calendarcommon2/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendarcommon2/RecurrenceSet;->rrules:[Lcom/android/calendarcommon2/EventRecurrence;

    move-object/from16 v19, v0

    aput-object v17, v19, v10

    .line 98
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 105
    .end local v10    # "i":I
    .end local v17    # "rrule":Lcom/android/calendarcommon2/EventRecurrence;
    .end local v18    # "rruleStrs":[Ljava/lang/String;
    :cond_1
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 106
    invoke-static/range {p2 .. p2}, Lcom/android/calendarcommon2/RecurrenceSet;->parseRecurrenceDates(Ljava/lang/String;)[J

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendarcommon2/RecurrenceSet;->rdates:[J

    .line 109
    :cond_2
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_3

    .line 110
    const-string v19, "\n"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 111
    .local v9, "exruleStrs":[Ljava/lang/String;
    array-length v0, v9

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v0, v0, [Lcom/android/calendarcommon2/EventRecurrence;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendarcommon2/RecurrenceSet;->exrules:[Lcom/android/calendarcommon2/EventRecurrence;

    .line 112
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_1
    array-length v0, v9

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v10, v0, :cond_3

    .line 113
    new-instance v8, Lcom/android/calendarcommon2/EventRecurrence;

    invoke-direct {v8}, Lcom/android/calendarcommon2/EventRecurrence;-><init>()V

    .line 114
    .local v8, "exrule":Lcom/android/calendarcommon2/EventRecurrence;
    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Lcom/android/calendarcommon2/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendarcommon2/RecurrenceSet;->exrules:[Lcom/android/calendarcommon2/EventRecurrence;

    move-object/from16 v19, v0

    aput-object v8, v19, v10

    .line 112
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 119
    .end local v8    # "exrule":Lcom/android/calendarcommon2/EventRecurrence;
    .end local v9    # "exruleStrs":[Ljava/lang/String;
    .end local v10    # "i":I
    :cond_3
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 120
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v15, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const-string v19, "\n"

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "arr$":[Ljava/lang/String;
    array-length v13, v2

    .local v13, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    move v12, v11

    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v11    # "i$":I
    .end local v13    # "len$":I
    .local v12, "i$":I
    :goto_2
    if-ge v12, v13, :cond_5

    aget-object v7, v2, v12

    .line 122
    .local v7, "exdate":Ljava/lang/String;
    invoke-static {v7}, Lcom/android/calendarcommon2/RecurrenceSet;->parseRecurrenceDates(Ljava/lang/String;)[J

    move-result-object v6

    .line 123
    .local v6, "dates":[J
    move-object v3, v6

    .local v3, "arr$":[J
    array-length v14, v3

    .local v14, "len$":I
    const/4 v11, 0x0

    .end local v12    # "i$":I
    .restart local v11    # "i$":I
    :goto_3
    if-ge v11, v14, :cond_4

    aget-wide v4, v3, v11

    .line 124
    .local v4, "date":J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 121
    .end local v4    # "date":J
    :cond_4
    add-int/lit8 v11, v12, 0x1

    move v12, v11

    .end local v11    # "i$":I
    .restart local v12    # "i$":I
    goto :goto_2

    .line 127
    .end local v3    # "arr$":[J
    .end local v6    # "dates":[J
    .end local v7    # "exdate":Ljava/lang/String;
    .end local v14    # "len$":I
    :cond_5
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [J

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendarcommon2/RecurrenceSet;->exdates:[J

    .line 128
    const/4 v10, 0x0

    .restart local v10    # "i":I
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v16

    .local v16, "n":I
    :goto_4
    move/from16 v0, v16

    if-ge v10, v0, :cond_6

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendarcommon2/RecurrenceSet;->exdates:[J

    move-object/from16 v20, v0

    invoke-interface {v15, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    aput-wide v21, v20, v10

    .line 128
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 133
    .end local v10    # "i":I
    .end local v12    # "i$":I
    .end local v15    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v16    # "n":I
    :cond_6
    return-void
.end method

.method public static parseRecurrenceDates(Ljava/lang/String;)[J
    .locals 11
    .param p0, "recurrence"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendarcommon2/EventRecurrence$InvalidFormatException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 153
    const-string v6, "UTC"

    .line 154
    .local v6, "tz":Ljava/lang/String;
    const-string v8, ";"

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 155
    .local v7, "tzidx":I
    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 156
    invoke-virtual {p0, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 157
    add-int/lit8 v8, v7, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 159
    :cond_0
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5, v6}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 160
    .local v5, "time":Landroid/text/format/Time;
    const-string v8, ","

    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 161
    .local v4, "rawDates":[Ljava/lang/String;
    array-length v3, v4

    .line 162
    .local v3, "n":I
    new-array v0, v3, [J

    .line 163
    .local v0, "dates":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 166
    :try_start_0
    aget-object v8, v4, v2

    invoke-virtual {v5, v8}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/util/TimeFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    invoke-virtual {v5, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    aput-wide v8, v0, v2

    .line 174
    iput-object v6, v5, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 163
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 167
    :catch_0
    move-exception v1

    .line 168
    .local v1, "e":Landroid/util/TimeFormatException;
    new-instance v8, Lcom/android/calendarcommon2/EventRecurrence$InvalidFormatException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TimeFormatException thrown when parsing time "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v4, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " in recurrence "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/calendarcommon2/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 176
    .end local v1    # "e":Landroid/util/TimeFormatException;
    :cond_1
    return-object v0
.end method


# virtual methods
.method public hasRecurrence()Z
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/calendarcommon2/RecurrenceSet;->rrules:[Lcom/android/calendarcommon2/EventRecurrence;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/calendarcommon2/RecurrenceSet;->rdates:[J

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
