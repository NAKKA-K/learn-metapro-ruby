module StringExtensions
  refine String do
    def to_alphanumeric
      gsub(/[^\w\s]/, '')
    end
  end
end

# refineを定義したモジュールをusingすると、同じスコープ内のみrefine内の定義が有効かされる
using StringExtensions
p "yeah, refinements...".to_alphanumeric

