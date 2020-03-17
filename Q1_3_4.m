function m = Q1_3_4(chain_length)

nb_chain = 100; % nombre de simulations
m = zeros(chain_length, nb_chain);

for i=1:nb_chain
	[~, m(:, i)] = Q1_3_3(chain_length);
end

M = zeros(chain_length, 1);
centile_05 = zeros(chain_length, 1);
centile_95 = zeros(chain_length, 1);
for i=1:chain_length
	M = mean(m(i, :));
	centile_05(i) = quantile(m(i, :), 0.05);
	centile_95(i) = quantile(m(i, :), 0.95);
end

hold on
plot(M);
plot(centile_05);
plot(centile_95);

end
