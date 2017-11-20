.class public Lcom/google/android/location/reporting/LocationRecordStore;
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

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE UlrLocation (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,"

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

    const-string v2, " \'%s\' INTEGER,"

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "Time"

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, " \'%s\' BLOB"

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "LocationRecord"

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

    sput-object v0, Lcom/google/android/location/reporting/LocationRecordStore;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/location/reporting/h;)V
    .locals 9
    .annotation build Lcom/google/android/gms/common/util/RetainForClient;
    .end annotation

    .prologue
    .line 68
    const-string v2, "UlrLocation"

    const-string v3, "id"

    const-string v4, "Account"

    const-string v5, "Time"

    sget-wide v6, Lcom/google/android/location/reporting/LocationRecordStore;->a:J

    sget-object v8, Lcom/google/android/location/reporting/LocationRecordStore;->b:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/location/reporting/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 76
    iput-object p2, p0, Lcom/google/android/location/reporting/LocationRecordStore;->c:Lcom/google/android/location/reporting/h;

    .line 77
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 21
    check-cast p1, Lcom/google/android/location/reporting/a/e;

    invoke-virtual {p0, p1}, Lcom/google/android/location/reporting/LocationRecordStore;->serializeEntity(Lcom/google/android/location/reporting/a/e;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/google/android/location/reporting/LocationRecordStore;->deserializeEntity(Landroid/database/Cursor;)Lcom/google/android/location/reporting/a/e;

    move-result-object v0

    return-object v0
.end method

.method public deserializeEntity(Landroid/database/Cursor;)Lcom/google/android/location/reporting/a/e;
    .locals 3
    .annotation build Lcom/google/android/gms/common/util/RetainForClient;
    .end annotation

    .prologue
    .line 85
    const-string v0, "LocationRecord"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/google/android/location/reporting/LocationRecordStore;->c:Lcom/google/android/location/reporting/h;

    invoke-virtual {v1, v0}, Lcom/google/android/location/reporting/h;->b([B)[B

    move-result-object v0

    .line 88
    new-instance v1, Lcom/google/android/location/reporting/a/e;

    invoke-direct {v1}, Lcom/google/android/location/reporting/a/e;-><init>()V

    array-length v2, v0

    invoke-virtual {v1, v0, v2}, Lcom/google/protobuf/a/f;->a([BI)Lcom/google/protobuf/a/f;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/reporting/a/e;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 89
    return-object v0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    new-instance v1, Lcom/google/android/location/reporting/f;

    invoke-direct {v1, v0}, Lcom/google/android/location/reporting/f;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 92
    :catch_1
    move-exception v0

    .line 93
    new-instance v1, Lcom/google/android/location/reporting/f;

    invoke-direct {v1, v0}, Lcom/google/android/location/reporting/f;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public serializeEntity(Lcom/google/android/location/reporting/a/e;)Landroid/content/ContentValues;
    .locals 4
    .annotation build Lcom/google/android/gms/common/util/RetainForClient;
    .end annotation

    .prologue
    .line 103
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 104
    const-string v1, "Time"

    iget-wide v2, p1, Lcom/google/android/location/reporting/a/e;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 106
    invoke-virtual {p1}, Lcom/google/android/location/reporting/a/e;->g()[B

    move-result-object v1

    .line 108
    :try_start_0
    iget-object v2, p0, Lcom/google/android/location/reporting/LocationRecordStore;->c:Lcom/google/android/location/reporting/h;

    invoke-virtual {v2, v1}, Lcom/google/android/location/reporting/h;->a([B)[B

    move-result-object v1

    .line 109
    const-string v2, "LocationRecord"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    return-object v0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    new-instance v1, Lcom/google/android/location/reporting/f;

    invoke-direct {v1, v0}, Lcom/google/android/location/reporting/f;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method
