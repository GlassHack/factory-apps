.class final Lcom/google/android/gms/fitness/n/ag;
.super Lcom/google/android/gms/fitness/n/aq;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/n/ac;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/n/ac;)V
    .locals 1

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/android/gms/fitness/n/ag;->a:Lcom/google/android/gms/fitness/n/ac;

    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/fitness/n/aq;-><init>(Lcom/google/android/gms/fitness/n/ac;I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 128
    sget-object v0, Lcom/google/android/gms/fitness/n/q;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 132
    const-string v0, "SyncStatus"

    invoke-virtual {p1, v0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 133
    const-string v0, "DataValues"

    invoke-static {p1, v0}, Lcom/google/android/gms/fitness/n/ac;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 134
    const-string v0, "DataPoints"

    invoke-static {p1, v0}, Lcom/google/android/gms/fitness/n/ac;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 135
    return-void
.end method
