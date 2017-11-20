.class final Lcom/google/android/gms/fitness/n/ap;
.super Lcom/google/android/gms/fitness/n/aq;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/n/ac;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/n/ac;)V
    .locals 1

    .prologue
    .line 105
    iput-object p1, p0, Lcom/google/android/gms/fitness/n/ap;->a:Lcom/google/android/gms/fitness/n/ac;

    const/16 v0, 0xd

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/fitness/n/aq;-><init>(Lcom/google/android/gms/fitness/n/ac;I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/google/android/gms/fitness/n/r;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 109
    sget-object v0, Lcom/google/android/gms/fitness/n/r;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 110
    return-void
.end method
