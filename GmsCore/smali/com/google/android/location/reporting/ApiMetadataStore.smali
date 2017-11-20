.class public Lcom/google/android/location/reporting/ApiMetadataStore;
.super Lcom/google/android/location/reporting/e;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/util/RetainForClient;
.end annotation


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Lcom/google/android/location/reporting/h;

.field private final d:Lcom/google/android/gms/common/server/response/c;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE ApiMetadata (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,"

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

    const-string v4, "ApiMetadata"

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

    sput-object v0, Lcom/google/android/location/reporting/ApiMetadataStore;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/location/reporting/h;)V
    .locals 9

    .prologue
    .line 64
    const-string v2, "ApiMetadata"

    const-string v3, "id"

    const-string v4, "Account"

    const-string v5, "Time"

    sget-wide v6, Lcom/google/android/location/reporting/ApiMetadataStore;->a:J

    sget-object v8, Lcom/google/android/location/reporting/ApiMetadataStore;->b:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/location/reporting/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 72
    iput-object p2, p0, Lcom/google/android/location/reporting/ApiMetadataStore;->c:Lcom/google/android/location/reporting/h;

    .line 73
    new-instance v0, Lcom/google/android/gms/common/server/response/c;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/response/c;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/reporting/ApiMetadataStore;->d:Lcom/google/android/gms/common/server/response/c;

    .line 74
    return-void
.end method

.method private a(Lcom/google/android/ulr/ApiMetadata;)Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 95
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 96
    const-string v1, "Time"

    invoke-virtual {p1}, Lcom/google/android/ulr/ApiMetadata;->b()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 98
    :try_start_0
    iget-object v1, p0, Lcom/google/android/location/reporting/ApiMetadataStore;->c:Lcom/google/android/location/reporting/h;

    invoke-virtual {p1}, Lcom/google/android/ulr/ApiMetadata;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/location/reporting/h;->a([B)[B

    move-result-object v1

    .line 99
    const-string v2, "ApiMetadata"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    return-object v0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    new-instance v1, Lcom/google/android/location/reporting/f;

    invoke-direct {v1, v0}, Lcom/google/android/location/reporting/f;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method private b(Landroid/database/Cursor;)Lcom/google/android/ulr/ApiMetadata;
    .locals 3

    .prologue
    .line 79
    const-string v0, "ApiMetadata"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 80
    new-instance v1, Lcom/google/android/ulr/ApiMetadata;

    invoke-direct {v1}, Lcom/google/android/ulr/ApiMetadata;-><init>()V

    .line 82
    :try_start_0
    iget-object v2, p0, Lcom/google/android/location/reporting/ApiMetadataStore;->c:Lcom/google/android/location/reporting/h;

    invoke-virtual {v2, v0}, Lcom/google/android/location/reporting/h;->b([B)[B

    move-result-object v0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 83
    iget-object v0, p0, Lcom/google/android/location/reporting/ApiMetadataStore;->d:Lcom/google/android/gms/common/server/response/c;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/server/response/c;->a(Ljava/lang/String;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/server/response/l; {:try_start_0 .. :try_end_0} :catch_1

    .line 89
    return-object v1

    .line 84
    :catch_0
    move-exception v0

    .line 85
    new-instance v1, Lcom/google/android/location/reporting/f;

    invoke-direct {v1, v0}, Lcom/google/android/location/reporting/f;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 86
    :catch_1
    move-exception v0

    .line 87
    new-instance v1, Lcom/google/android/location/reporting/f;

    invoke-direct {v1, v0}, Lcom/google/android/location/reporting/f;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 21
    check-cast p1, Lcom/google/android/ulr/ApiMetadata;

    invoke-direct {p0, p1}, Lcom/google/android/location/reporting/ApiMetadataStore;->a(Lcom/google/android/ulr/ApiMetadata;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic a(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/google/android/location/reporting/ApiMetadataStore;->b(Landroid/database/Cursor;)Lcom/google/android/ulr/ApiMetadata;

    move-result-object v0

    return-object v0
.end method
