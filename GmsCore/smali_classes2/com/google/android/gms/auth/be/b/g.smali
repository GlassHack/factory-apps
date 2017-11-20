.class final Lcom/google/android/gms/auth/be/b/g;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 163
    const-string v0, "otp_counters.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 164
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 168
    const-string v0, "CREATE TABLE otp_counters (otp_secret_hash STRING NOT NULL PRIMARY KEY, account_name STRING NOT NULL, counter INTEGER NOT NULL, otp_secret_creation_time_millis INTEGER NOT NULL, creation_time_millis INTEGER NOT NULL, modification_time_millis INTEGER NOT NULL )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .prologue
    .line 173
    return-void
.end method
