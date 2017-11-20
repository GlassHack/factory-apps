.class public Lcom/google/android/glass/settings/SettingsCursor;
.super Landroid/database/AbstractCursor;
.source "SettingsCursor.java"


# static fields
.field static final DEFAULT_COLNAMES:[Ljava/lang/String;

.field private static final MAX_ROW_COUNT:I = 0x1


# instance fields
.field private mCurNames:[Ljava/lang/String;

.field private mCurValues:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "value"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/glass/settings/SettingsCursor;->DEFAULT_COLNAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "projection"    # [Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 41
    invoke-static {p3}, Lcom/google/android/glass/settings/SettingsCursor;->checkProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/glass/settings/SettingsCursor;->mCurNames:[Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcom/google/android/glass/settings/SettingsCursor;->mCurNames:[Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/google/android/glass/settings/SettingsCursor;->getValues(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/glass/settings/SettingsCursor;->mCurValues:[Ljava/lang/String;

    .line 43
    return-void
.end method

.method static checkProjection([Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p0, "projection"    # [Ljava/lang/String;

    .prologue
    .line 127
    if-nez p0, :cond_1

    .line 128
    sget-object p0, Lcom/google/android/glass/settings/SettingsCursor;->DEFAULT_COLNAMES:[Ljava/lang/String;

    .line 141
    .local v0, "i":I
    :cond_0
    return-object p0

    .line 130
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 131
    const/4 v2, 0x0

    .line 132
    .local v2, "validProjection":Z
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    sget-object v3, Lcom/google/android/glass/settings/SettingsCursor;->DEFAULT_COLNAMES:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 133
    sget-object v3, Lcom/google/android/glass/settings/SettingsCursor;->DEFAULT_COLNAMES:[Ljava/lang/String;

    aget-object v3, v3, v1

    aget-object v4, p0, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 134
    const/4 v2, 0x1

    .line 136
    :cond_2
    if-nez v2, :cond_3

    .line 137
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid projection "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p0, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 132
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 130
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static getValues(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "projection"    # [Ljava/lang/String;

    .prologue
    .line 109
    if-nez p2, :cond_0

    .line 110
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 121
    :goto_0
    return-object v2

    .line 112
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_3

    .line 114
    aget-object v2, p2, v0

    const-string v3, "name"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 115
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_1
    aget-object v2, p2, v0

    const-string v3, "value"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 118
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 121
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getColumnIndex(Ljava/lang/String;)I
    .locals 3
    .param p1, "colname"    # Ljava/lang/String;

    .prologue
    .line 52
    const/4 v1, -0x1

    .line 53
    .local v1, "value":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/android/glass/settings/SettingsCursor;->mCurNames:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 54
    iget-object v2, p0, Lcom/google/android/glass/settings/SettingsCursor;->mCurNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    move v1, v0

    .line 53
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_1
    return v1
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/glass/settings/SettingsCursor;->mCurNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 68
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public getInt(I)I
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 83
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/glass/settings/SettingsCursor;->mCurNames:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 94
    const/4 v0, 0x0

    .line 96
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/glass/settings/SettingsCursor;->mCurValues:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 2
    .param p1, "column"    # I

    .prologue
    const/4 v0, 0x1

    .line 101
    iget-object v1, p0, Lcom/google/android/glass/settings/SettingsCursor;->mCurNames:[Ljava/lang/String;

    array-length v1, v1

    if-lt p1, v1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/glass/settings/SettingsCursor;->mCurValues:[Ljava/lang/String;

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method
