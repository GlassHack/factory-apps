.class public Lcom/google/android/location/reporting/DetectedActivityStore;
.super Lcom/google/android/location/reporting/e;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/util/RetainForClient;
.end annotation


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Lcom/google/android/location/reporting/h;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE ActivityDetection (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, " \'%s\' STRING,"

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "Account"

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, " \'%s\' BLOB,"

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "ActivityType"

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, " \'%s\' INTEGER"

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "Time"

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/location/reporting/DetectedActivityStore;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/location/reporting/h;)V
    .locals 9

    .prologue
    .line 66
    const-string v2, "ActivityDetection"

    const-string v3, "id"

    const-string v4, "Account"

    const-string v5, "Time"

    sget-wide v6, Lcom/google/android/location/reporting/DetectedActivityStore;->a:J

    sget-object v8, Lcom/google/android/location/reporting/DetectedActivityStore;->b:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/location/reporting/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 74
    iput-object p2, p0, Lcom/google/android/location/reporting/DetectedActivityStore;->c:Lcom/google/android/location/reporting/h;

    .line 75
    return-void
.end method

.method private a([B)[B
    .locals 3

    .prologue
    .line 111
    if-eqz p1, :cond_0

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/reporting/DetectedActivityStore;->c:Lcom/google/android/location/reporting/h;

    invoke-virtual {v0, p1}, Lcom/google/android/location/reporting/h;->a([B)[B
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    const-string v1, "GCoreUlr"

    const-string v2, "Error encrypting activity type"

    invoke-static {v1, v2, v0}, Lcom/google/android/location/reporting/b/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    new-instance v1, Lcom/google/android/location/reporting/f;

    invoke-direct {v1, v0}, Lcom/google/android/location/reporting/f;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 119
    :cond_0
    new-instance v0, Lcom/google/android/location/reporting/f;

    const-string v1, "Can\'t encrypt null data"

    invoke-direct {v0, v1}, Lcom/google/android/location/reporting/f;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(Landroid/database/Cursor;)Lcom/google/android/gms/location/ActivityRecognitionResult;
    .locals 3

    .prologue
    .line 80
    const-string v0, "ActivityType"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    const-string v0, "ActivityType"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/location/reporting/DetectedActivityStore;->b([B)[B

    move-result-object v0

    .line 83
    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lcom/google/android/location/reporting/f;

    const-string v1, "Error decrypting activity detection result"

    invoke-direct {v0, v1}, Lcom/google/android/location/reporting/f;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    :try_start_0
    new-instance v1, Lcom/google/android/location/m/b;

    invoke-direct {v1}, Lcom/google/android/location/m/b;-><init>()V

    array-length v2, v0

    invoke-virtual {v1, v0, v2}, Lcom/google/protobuf/a/f;->a([BI)Lcom/google/protobuf/a/f;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/m/b;

    .line 91
    invoke-static {v0}, Lcom/google/android/location/i/g;->a(Lcom/google/android/location/m/b;)Lcom/google/android/gms/location/ActivityRecognitionResult;
    :try_end_0
    .catch Lcom/google/protobuf/a/e; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    new-instance v1, Lcom/google/android/location/reporting/f;

    invoke-direct {v1, v0}, Lcom/google/android/location/reporting/f;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 96
    :cond_1
    new-instance v0, Lcom/google/android/location/reporting/f;

    const-string v1, "Null activity detection column"

    invoke-direct {v0, v1}, Lcom/google/android/location/reporting/f;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b([B)[B
    .locals 3

    .prologue
    .line 123
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/reporting/DetectedActivityStore;->c:Lcom/google/android/location/reporting/h;

    invoke-virtual {v0, p1}, Lcom/google/android/location/reporting/h;->b([B)[B
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    const-string v1, "GCoreUlr"

    const-string v2, "Error decrypting activity type"

    invoke-static {v1, v2, v0}, Lcom/google/android/location/reporting/b/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    new-instance v1, Lcom/google/android/location/reporting/f;

    invoke-direct {v1, v0}, Lcom/google/android/location/reporting/f;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 131
    :cond_0
    new-instance v0, Lcom/google/android/location/reporting/f;

    const-string v1, "Can\'t decrypt empty array"

    invoke-direct {v0, v1}, Lcom/google/android/location/reporting/f;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 24
    check-cast p1, Lcom/google/android/gms/location/ActivityRecognitionResult;

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "Time"

    invoke-virtual {p1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {p1}, Lcom/google/android/location/i/g;->a(Lcom/google/android/gms/location/ActivityRecognitionResult;)Lcom/google/android/location/m/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/location/m/b;->g()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/location/reporting/DetectedActivityStore;->a([B)[B

    move-result-object v1

    const-string v2, "ActivityType"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    return-object v0
.end method

.method public final synthetic a(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/google/android/location/reporting/DetectedActivityStore;->b(Landroid/database/Cursor;)Lcom/google/android/gms/location/ActivityRecognitionResult;

    move-result-object v0

    return-object v0
.end method
