.class public Lcom/android/providers/contacts/util/CloseUtils;
.super Ljava/lang/Object;
.source "CloseUtils.java"


# direct methods
.method public static closeQuietly(Landroid/database/Cursor;)V
    .locals 0
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 29
    if-eqz p0, :cond_0

    .line 30
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 32
    :cond_0
    return-void
.end method
