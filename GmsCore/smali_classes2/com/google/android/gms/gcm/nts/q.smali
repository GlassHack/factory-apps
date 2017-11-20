.class final Lcom/google/android/gms/gcm/nts/q;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/gcm/nts/p;


# direct methods
.method constructor <init>(Lcom/google/android/gms/gcm/nts/p;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 284
    iput-object p1, p0, Lcom/google/android/gms/gcm/nts/q;->a:Lcom/google/android/gms/gcm/nts/p;

    .line 285
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 286
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 290
    const-string v0, "create TABLE pending_ops (_id INTEGER PRIMARY KEY AUTOINCREMENT,target_package STRING NOT NULL,target_class STRING NOT NULL,tag STRING,runtime INTEGER,flex_time INTEGER,period INTEGER,last_runtime INTEGER,user_id INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .prologue
    .line 295
    packed-switch p2, :pswitch_data_0

    .line 301
    :goto_0
    return-void

    .line 299
    :pswitch_0
    const-string v0, "DROP TABLE IF EXISTS pending_ops"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 300
    const-string v0, "create TABLE pending_ops (_id INTEGER PRIMARY KEY AUTOINCREMENT,target_package STRING NOT NULL,target_class STRING NOT NULL,tag STRING,runtime INTEGER,flex_time INTEGER,period INTEGER,last_runtime INTEGER,user_id INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    .line 295
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
